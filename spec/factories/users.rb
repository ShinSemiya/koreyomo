# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    provider "twitter"
    uid "12345678"
    screen_name "ほげ ふが"
    name "hoge_fuga"

    email { rand(1000).to_s + "@fake.jp" }
    password "hogefuga"
  end
end

