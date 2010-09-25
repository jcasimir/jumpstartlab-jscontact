class EmailAddress < ActiveRecord::Base
  attr_accessible :address, :person_id, :label_id
  
  belongs_to :person
  belongs_to :label
  
  validates_presence_of :address, :person, :label
  validates_format_of :address,
                      :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i,
                      :message    => 'email must in a valid format'
  
end
