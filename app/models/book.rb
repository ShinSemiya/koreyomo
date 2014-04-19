class Book < ActiveRecord::Base
  validates_presence_of :title, :isbn, :author
end
