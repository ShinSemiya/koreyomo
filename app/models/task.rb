class Task < ActiveRecord::Base

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
    "Fake implement"
  end
end
