class Plan < ActiveRecord::Base
  has_many :users    
  #validates_associated :users
end