class PhoneNumber < ActiveRecord::Base
  attr_accessible :number, :person_id
  
  belongs_to :person
end
