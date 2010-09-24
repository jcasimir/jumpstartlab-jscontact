class AddLabelIdToPhoneNumbersAndEmailAddresses < ActiveRecord::Migration
  def self.up
    add_column :phone_numbers, :label_id, :integer
    add_column :email_addresses, :label_id, :integer
  end

  def self.down
    remove_column :phone_numbers, :label_id
    remove_column :email_addresses, :label_id
  end
end
