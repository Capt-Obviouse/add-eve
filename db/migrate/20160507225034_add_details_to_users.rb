class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :last_api_call, :string
    add_column :users, :last_character_change, :string
    add_column :users, :last_successful_api_call, :string
  end
end
