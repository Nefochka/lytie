# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

products.create({"code"=>"1", "name"=>"ниппель", "price"=>"", "material"=>"полипропилен", "weight"=>""})
products.create({"code"=>"2", "name"=>"подпятник", "price"=>"", "material"=>"полипропилен", "weight"=>""})
products.create({"code"=>"3", "name"=>"z-крепление", "price"=>"", "material"=>"сталь", "weight"=>""})
products.create({"code"=>"4", "name"=>"уголок", "price"=>"", "material"=>"алюминий", "weight"=>""})


    create_table :products do |t|
      t.integer :
      t.string :
      t.decimal :, :precision => 5, :scale => 2
      t.string :
      t.decimal :, :precision => 4, :scale => 1

