class Note < ActiveRecord::Base
  attr_accessible :title, :body, :contact_ids
  
  has_many :taggings, :as => :asset
  has_many :contacts, :through => :taggings
end
