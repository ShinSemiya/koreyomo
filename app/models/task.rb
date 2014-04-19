class Task < ActiveRecord::Base
  belongs_to :user
  has_many :task_points

  scope :wip, -> { where(state: 'wip') }
  scope :ready, -> { where(state: 'ready') }

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
end
