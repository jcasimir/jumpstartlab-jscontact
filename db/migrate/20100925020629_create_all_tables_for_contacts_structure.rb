class CreateAllTablesForContactsStructure < ActiveRecord::Migration
  def self.up
    create_table "contacts", :force => true do |t|
      t.string   "type"
      t.string   "first_name"
      t.string   "last_name"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    create_table "email_addresses", :force => true do |t|
      t.string   "address"
      t.integer  "contact_id"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.integer  "label_id"
    end

    create_table "labels", :force => true do |t|
      t.string   "name"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    create_table "phone_numbers", :force => true do |t|
      t.string   "number"
      t.integer  "contact_id"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.integer  "label_id"
    end
  end

  def self.down
    drop_table "phone_numbers"
    drop_table "labels"
    drop_table "email_addresses"
    drop_table "contacts"
  end
end
