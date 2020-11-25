# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# <%= product.name %>
# <%= product.description %>
# <%= product.size %>
# <%= product.price %>
puts "Starting"

# first = Product.new( name: "Camisa Naruto", description: "Essa camisa de naruto é muito boa", size: "GG", price:"24,50", user: User.all.sample)
# first.save

second = Product.new( name: "Camisa Sasuke", description: "Essa camisa de sasuke é muito boa", size: "P", price:"39,90", user: User.all.sample)
second.save

product3 = Product.new( name: "Camisa Sakura", description: "Essa camisa de sakura é muito boa", size: "M", price:"42,90", user: User.all.sample)
product3.save

product4 = Product.new( name: "Camisa Kakashi", description: "Essa camisa de kakashi é muito boa", size: "G", price:"29,90", user: User.all.sample)
product4.save

product5 = Product.new( name: "Camisa Tsunade", description: "Essa camisa de tsunade é muito boa", size: "PP", price:"29,90", user: User.all.sample)
product5.save

puts "Done"
