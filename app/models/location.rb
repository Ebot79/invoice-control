class Location < ActiveRecord::Base
  attr_accessible :city, :number, :photo, :state, :street, :zip
  
  has_many :billees
  has_many :tasks
  has_many :employees
  has_many :residents
  
end
