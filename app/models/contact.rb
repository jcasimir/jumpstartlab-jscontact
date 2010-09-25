class Contact < ActiveRecord::Base
  attr_accessible :type
  
  has_many :phone_numbers
  has_many :email_addresses
  has_many :taggings
  has_many :notes, :through => :taggings, :as => :asset, :conditions => {'taggings.asset_type' => "Note"}
  has_many :attachments, :through => :taggings, :as => :asset, :conditions => {'taggings.asset_type' => "Attachment"}
end
