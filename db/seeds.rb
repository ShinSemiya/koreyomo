if %w(development).include? Rails.env
  include FactoryGirl::Syntax::Methods

  create(:user)
  create_list(:dev_book, 5)
  create_list(:dev_task, 10)
end
