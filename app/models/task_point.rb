class TaskPoint < ActiveRecord::Base
  validates_presence_of :point
  belongs_to :task
end
