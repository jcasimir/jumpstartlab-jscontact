class PhoneNumber < ActiveRecord::Base
  attr_accessible :number, :contact_id, :label_id
  
  belongs_to :contact
  belongs_to :label
  
  validates_presence_of :number
  validates_presence_of :contact
  validates_presence_of :label
  validates_numericality_of :number
  
  before_validation :clean_number

  def clean_number
    number.delete!("-()+., ") unless number.nil?
  end
  
end
