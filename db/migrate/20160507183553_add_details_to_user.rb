class AddDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :api_keys, :string
    add_column :users, :api_vcodes, :string
    add_column :users, :second_characters, :string
    add_column :users, :third_characters, :string
  end
end
