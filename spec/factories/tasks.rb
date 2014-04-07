# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    name "テストなタスク"
    size 1

    factory :dev_task do
      sequence(:name) { |n| "テストなタスク_#{n}" }
    end
  end
end
