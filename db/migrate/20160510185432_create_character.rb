class CreateCharacter < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.integer :user_id
      t.string :characterOne
      t.string :characterTwo
      t.string :characterThree
      t.integer :characterOneCorp
      t.integer :characterTwoCorp
      t.integer :characterThreeCorp
      t.integer :characterOnePrimary
      t.integer :characterTwoPrimary
      t.integer :characterThreePrimary
      t.string :characterOneBalance
      t.string :characterTwoBalance
      t.string :characterThreeBalance
    end
  end
end
