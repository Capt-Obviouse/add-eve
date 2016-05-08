class AddNewDetailsToUser < ActiveRecord::Migration
	remove_column :users, :user, :string
	add_column :users, :users, :string
  	DbTextSearch::CaseInsensitive.add_index(
  	connection, Thredded.user_class.table_name, Thredded.user_name_column, unique: true)
end
