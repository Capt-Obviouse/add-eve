class AddRankToUser < ActiveRecord::Migration
  def change
    add_column :users, :rank, :int
  end
end
