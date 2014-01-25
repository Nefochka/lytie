class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :code
      t.string :name
      t.decimal :price, :precision => 5, :scale => 2
      t.string :material
      t.decimal :weight, :precision => 4, :scale => 1

      t.timestamps
    end
    add_index :products, :name
  end
end
