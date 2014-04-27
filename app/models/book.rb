class Book < ActiveRecord::Base
  validates_presence_of :title, :isbn, :author
  belongs_to :user
end
