class Tagging < ActiveRecord::Base
  attr_accessible :contact_id, :asset_id, :asset_type
  
  belongs_to :contact
  belongs_to :asset, :polymorphic => true
  belongs_to :note, :foreign_key => :asset_id, :conditions => "asset_type = 'Note'"
  belongs_to :attachment, :foreign_key => :asset_id, :conditions => "asset_type = 'Attachment'"
  
  validates_presence_of :contact
  validates_presence_of :asset
end
