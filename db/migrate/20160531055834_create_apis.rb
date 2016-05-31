class CreateApis < ActiveRecord::Migration
  def change
    create_table :apis do |t|
      t.integer :keyid
      t.string :vcode
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
