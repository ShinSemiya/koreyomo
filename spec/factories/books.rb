FactoryGirl.define do
  factory :book do
    isbn 123456789
    title "テストな書籍名"
    author "テストな著者"

    factory :dev_book do
      sequence(:isbn) { |n| n }
      sequence(:title) { |n| "テストな書籍名_#{n}" }
      sequence(:author) { |n| "テストな著者_#{n}" }
    end
  end
end
