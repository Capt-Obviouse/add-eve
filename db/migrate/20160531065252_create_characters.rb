class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :character
      t.references :user, index: true, foreign_key: true
      t.string :corporation
      t.integer :corporationid

      t.timestamps null: false
    end
  end
end
