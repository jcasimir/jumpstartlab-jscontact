class PhoneNumber < ActiveRecord::Base
  attr_accessible :number, :person_id
  
  belongs_to :person
  
  validates_presence_of :number
  validates_presence_of :person
  
end
