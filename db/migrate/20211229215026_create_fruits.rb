class CreateFruits < ActiveRecord::Migration[6.1]
  def change
    create_table :fruits do |t|
      t.string :name
      t.integer :carbohydrates
      t.integer :protein
      t.integer :fat

      t.timestamps
    end
  end
end
