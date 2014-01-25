class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details, :null => false do |t|
      t.references :order
      t.references :product
      t.integer   :quantity
      t.string     :comment, :null => true 
      t.integer :discount_percent, :null => true

      t.timestamps
    end
    add_index :order_details, :order_id 
    add_index :order_details, :product_id 
    add_foreign_key :order_details, :products, :dependent => :delete
    add_foreign_key :order_details, :orders, :dependent => :delete
  end
end
