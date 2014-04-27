# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task_point do
    point 1
    association :task
  end
end
