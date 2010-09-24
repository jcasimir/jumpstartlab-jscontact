class Label < ActiveRecord::Base
  attr_accessible :name
  
  has_many :phone_numbers
  has_many :email_addresses
  
  validates_presence_of :name
  
  def to_s
    name
  end
  
end
