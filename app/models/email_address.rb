class EmailAddress < ActiveRecord::Base
  attr_accessible :address, :contact_id, :label_id
  
  belongs_to :contact
  belongs_to :label
  
  validates_presence_of :address, :contact, :label
  validates_format_of :address,
                      :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i,
                      :message    => 'email must in a valid format'
  
end
