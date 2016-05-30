class AddDirectorsToViewSettings < ActiveRecord::Migration
  def change
  	add_column :view_settings, :directors, :int, :default => 1
  end
end
