class AddDetailsToViewSettings < ActiveRecord::Migration
  def change
  	add_column :view_settings, :officers, :int, :default => 1
  end
end
