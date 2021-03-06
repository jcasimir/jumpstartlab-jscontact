class Attachment < ActiveRecord::Base
  has_attached_file :file
  
  has_many :taggings, :as => :asset
  has_many :contacts, :through => :taggings
  
  def to_s
    title
  end
end
