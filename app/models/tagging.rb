class Tagging < ActiveRecord::Base
  attr_accessible :contact_id, :asset_id, :asset_type
end
