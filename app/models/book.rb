class Book < ActiveRecord::Base
  belongs_to :archive
  validates_presence_of :title, :isbn, :author
end
