if %w(development).include? Rails.env
  include FactoryGirl::Syntax::Methods

  create(:user)
end
