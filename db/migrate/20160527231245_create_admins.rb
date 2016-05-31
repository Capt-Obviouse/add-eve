class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.integer :forum, :default => 6
      t.integer :rank, :default => 6
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
