FactoryGirl.define do
  factory :task do
    name "テストなタスク"
    size 1
    state 'wip'
    association :user

    factory :dev_task do
      sequence(:name) { |n| "テストなタスク_#{n}" }
      state { Task::STATE_NAME.keys.sample.to_s }
    end

    trait :with_task_point do
      after :create do |task|
        if task.wip? || task.done?
          rand(1..5).times { task.task_points << build(:task_point, point: rand(1..3)) }
        end

        if task.done?
          task.update(done_point: task.progress_point, finished_at: Time.current)
        end
      end
    end
  end
end
