class Book < ActiveRecord::Base
  belongs_to :archive
  validate_presence :title, :isbn,
end
