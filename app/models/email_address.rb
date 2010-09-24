class EmailAddress < ActiveRecord::Base
  attr_accessible :address, :person_id
  
  belongs_to :person
  belongs_to :label
  
  validates_presence_of :address, :person
end
