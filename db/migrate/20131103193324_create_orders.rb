class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :number
      t.datetime :ordered_at
      t.string :name
      t.string :phone
      t.string :email
      t.datetime :complete_at 
      t.string :status
      t.string :comment, :null => true, :limit => 2048

      t.timestamps
    end
    add_index :orders, :phone
  end
end
