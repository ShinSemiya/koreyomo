class User < ActiveRecord::Base
  FAKE_ADDRESS = "fake@fake.jp"
  FAKE_PASSWORD = "abcdefg"
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.screen_name = auth['info']['nickname']
      user.name = auth['info']['name']

      user.email = FAKE_ADDRESS
      user.password = FAKE_PASSWORD + rand(100000).round.to_s
    end
  end
end
