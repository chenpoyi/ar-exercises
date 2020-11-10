require_relative '../setup'

puts "Exercise 1"
puts "----------"

# create_table :stores do |t|
#   t.column :name, :string
#   t.column :annual_revenue, :integer
#   t.column :mens_apparel, :boolean
#   t.column :womens_apparel, :boolean
#   t.timestamps null: false
# Your code goes below here ...
Store.create(name:"Burnaby", annual_revenue:300000, mens_apparel: true, womens_apparel:true)
Store.create(name:"Richmond", annual_revenue:1260000, mens_apparel: false, womens_apparel:true)
Store.create(name:"Gastown", annual_revenue:190000, mens_apparel: true, womens_apparel:false)

puts Store.count()