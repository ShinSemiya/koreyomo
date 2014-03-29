class Task < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :user

  # State Machine
  state_machine :state, initial: :icebox do
    state :icebox
    state :ready
    state :wip
    state :done

    after_transition unpaid: :paid do |order|
      order.touch(:paid_at)
      order.complete if order.no_shipment?
    end

    after_transition paid: :completed do |order|
      order.touch(:completed_at)
    end

    after_transition any => :cancelled do |order|
      order.line_items.each(&:restore_variation_stock)
    end

    event :to_paid do
      transition unpaid: :paid
    end

    event :complete do
      transition paid: :completed, if: :all_shipped?
    end

    event :cancel do
      transition [:unpaid, :paid] => :cancelled, if: :none_shipped?
      transition [:completed] => :cancelled, if: [:no_shipment?, :not_calculated?]
    end
  end
end
