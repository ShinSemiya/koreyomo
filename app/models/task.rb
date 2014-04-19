class Task < ActiveRecord::Base
  belongs_to :user
  has_many :task_points

  scope :wip, -> { where(state: 'wip') }
  scope :ready, -> { where(state: 'ready') }
  scope :done, -> { where(state: 'done') }

  scope :finished_in_week, -> { where(finished_at: 7.days.ago..Time.current) }
  scope :finished_in_30_days, -> { where(finished_at: 30.days.ago..Time.current) }

  STATE_NAME = {
    icebox: '積み',
    ready: '準備OK',
    wip: '作業中',
    done: '完了'
  }

  # State Machine
  state_machine :state, initial: :icebox do
    state :icebox
    state :ready
    state :wip
    state :done

    after_transition ready: :wip do |task|
      task.touch(:started_at)
    end
  end

  def state_name
    STATE_NAME[state.to_sym]
  end

  def increase_point(point)
    self.task_points << TaskPoint.new(point: point)
  end

  def progress_point
    task_points.map(&:point).sum
  end

  def self.periodic_done(period)
    #TODO Must Refactor
    if period.blank?
      finished_in_week
    elsif period == 'all'
      done
    elsif  period == 'week'
      finished_in_week
    elsif  period == 'month'
      finished_in_30_days
    end
  end
end
