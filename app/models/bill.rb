class Bill < ActiveRecord::Base
  attr_accessible :billed, :billee_id, :ordered, :paid, :total
  
  has_many :tasks
  belongs_to :billee
  
end
