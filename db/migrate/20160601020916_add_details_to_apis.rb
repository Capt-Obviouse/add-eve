class AddDetailsToApis < ActiveRecord::Migration
  def change
    add_column :apis, :last_call, :time
  end
end
