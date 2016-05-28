class CreateViewSettings < ActiveRecord::Migration
  def change
    create_table :view_settings do |t|
      t.integer :corporation_information, :default => 1
      t.integer :programs, :default => 1
      t.integer :operations, :default => 1
      t.integer :communications, :default => 1
      t.integer :finances, :default => 1
      t.integer :general_information, :default => 1
      t.integer :new_members, :default => 1
      t.integer :eve_account_information, :default => 1
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
