class Tagging < ActiveRecord::Base
  attr_accessible :contact_id, :asset_id, :asset_type
  
  belongs_to :contact
  belongs_to :asset, :polymorphic => true
  
  validates_presence_of :contact
  validates_presence_of :asset
end
