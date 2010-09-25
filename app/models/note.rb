class Note < ActiveRecord::Base
  attr_accessible :title, :body
  
  has_many :taggings
  has_many :contacts, :through => :taggings
end
