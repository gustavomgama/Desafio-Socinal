class ChangeIntegerToDecimal < ActiveRecord::Migration[6.1]
  def change
    change_column :fruits, :carbohydrates, :decimal
    change_column :fruits, :protein, :decimal
    change_column :fruits, :fat, :decimal
  end
end
