class Contact < ActiveRecord::Base
  attr_accessible :type
  
  has_many :phone_numbers
  has_many :email_addresses
end
