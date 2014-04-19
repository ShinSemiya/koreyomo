if %w(development).include? Rails.env
  include FactoryGirl::Syntax::Methods

  user = create(:user)
  create_list(:dev_book, 5, user: user)
  create_list(:dev_task, 10, :with_task_point,  user: user)
end
