class CreateCartItem < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_items do |t|
      t.integer :quantity
      t.integer :total_product
      t.integer :save_price_to_cart
      t.references(:product, null: false, type: :bigint)
      t.references(:cart, null: false, type: :bigint)
      t.timestamps
    end
  end
end
