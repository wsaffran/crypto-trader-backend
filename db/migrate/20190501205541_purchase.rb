class Purchase < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.integer :user_id
      t.integer :coin_id
      t.integer :num_of_coins
      t.integer :price
      t.datetime :time_of_purchase

      t.timestamps
    end
  end
end
