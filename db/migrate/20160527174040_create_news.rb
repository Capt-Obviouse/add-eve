class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.string :category
      t.text :article
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
