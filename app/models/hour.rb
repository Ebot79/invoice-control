class Hour < ActiveRecord::Base
  attr_accessible :employee_id, :task_id, :time
   
  belongs_to :employee
  belongs_to :task 
  
end
