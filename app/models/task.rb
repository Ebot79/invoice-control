class Task < ActiveRecord::Base
  attr_accessible :bill_id, :description, :labor, :location_id, :materials, :start, :status
  
  has_many :hours
  has_many :materials
  has_many :employees :through => :hours
  
  belongs_to :bill
  belongs_to :location
  
  
end
