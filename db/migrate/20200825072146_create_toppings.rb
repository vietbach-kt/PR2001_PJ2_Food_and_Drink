class CreateToppings < ActiveRecord::Migration[6.0]
  def change
    create_table :toppings do |t|
      t.string :name
      t.integer :type
      t.integer :price
      t.references :product, null: false, foreign_key: true
    end
  end
end
