class CreateUsernames < ActiveRecord::Migration
  def change
    create_table :usernames do |t|
      t.string :username
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
