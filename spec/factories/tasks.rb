# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    name "テストなタスク"
    size 1
    state 'wip'
    association :user

    factory :dev_task do
      sequence(:name) { |n| "テストなタスク_#{n}" }
      state { Task::STATE_NAME.keys.sample.to_sym }
    end
  end
end
