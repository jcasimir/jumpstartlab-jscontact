class Person < ActiveRecord::Base
  attr_accessible :first_name, :last_name
  
  validates_presence_of :first_name, :last_name
  
  has_many :phone_numbers
  has_many :email_addresses
  
  def to_s
    "#{last_name}, #{first_name}"
  end
end
