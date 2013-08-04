class Resident < ActiveRecord::Base
  attr_accessible :email, :f_name, :l_name, :location_id, :phone1, :phone2, :photo
  
  belongs_to :location
end
