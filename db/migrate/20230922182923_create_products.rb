class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :about
      t.text :description
      t.decimal :price
      t.decimal :buy_now_price
      t.string :product_condition
      t.string :brand
      t.boolean :is_featured
      t.boolean :is_on_sale
      t.boolean :is_refundable
      t.boolean :is_disputable
      t.integer :quantity
      t.decimal :weight
      t.string :size

      t.timestamps
    end
  end
end
