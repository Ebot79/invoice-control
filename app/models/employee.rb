class Employee < ActiveRecord::Base
  attr_accessible :f_name, :l_name, :location_id, :photo, :rate
  
  has_many :hours
  has_many :tasks, :through => :hours
  belongs_to :location
  
end
