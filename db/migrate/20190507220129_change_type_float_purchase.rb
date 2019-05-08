class ChangeTypeFloatPurchase < ActiveRecord::Migration[5.2]
  def change
    change_column :purchases, :price, :float
  end
end
