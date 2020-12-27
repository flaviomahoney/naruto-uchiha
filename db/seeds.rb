# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Exemplo

# viktor_photo = "https://avatars3.githubusercontent.com/u/63431873?s=460&u=1084b312c7083849885fae61cf7f4db400eecf7a&v=4"
# file = URI.open(viktor_photo)
# filename = File.basename(URI.parse(viktor_photo).path)
# viktor_user = User.new(email: "vkaraujo00@gmail.com", password: '123456', username: "Viktor", role: "admin")
# viktor_user.photo.attach(io: file, filename: filename)
# viktor_user.save

require 'open-uri'
OpenURI::Buffer.send :remove_const, 'StringMax' if OpenURI::Buffer.const_defined?('StringMax')
OpenURI::Buffer.const_set 'StringMax', 0

puts "Destroying all"
Product.destroy_all
User.destroy_all


puts "Starting"

User.create!(email: "flavio@gmail.com", password: "123456")

konoha_photo = "https://res.cloudinary.com/dmcepupsl/image/upload/v1608302586/tlynmru5qsryl4qimy7wx2n73w52.jpg"
file = URI.open(konoha_photo)
filename = File.basename(URI.parse(konoha_photo).path)
first = Product.new( name: "Konoha", description: "Essa camisa de konoha é muito boa", price:"39,90", user: User.all.sample)
first.photo.attach(io: file, filename: filename)
first.save

sasuke_photo = "https://res.cloudinary.com/dmcepupsl/image/upload/v1608303412/orozd19xgo3nu4snxjld23l9914s.png"
file = URI.open(sasuke_photo)
filename = File.basename(URI.parse(sasuke_photo).path)
second = Product.new( name: "Camisa Sasuke", description: "Essa camisa de sasuke é muito boa", price:"39,90", user: User.all.sample)
second.photo.attach(io: file, filename: filename)
second.save

sakura_photo = "https://res.cloudinary.com/dmcepupsl/image/upload/v1608303397/p8681zjyiwqio18tilegjcv6qoop.png"
file = URI.open(sakura_photo)
filename = File.basename(URI.parse(sakura_photo).path)
product3 = Product.new( name: "Camisa Sakura", description: "Essa camisa de sakura é muito boa", price:"42,90", user: User.all.sample)
product3.photo.attach(io: file, filename: filename)
product3.save

kakashi_photo = "https://res.cloudinary.com/dmcepupsl/image/upload/v1608303445/4sm3p370kn0eyzabumdext0n533s.jpg"
file = URI.open(kakashi_photo)
filename = File.basename(URI.parse(kakashi_photo).path)
product4 = Product.new( name: "Camisa Kakashi", description: "Essa camisa de kakashi é muito boa", price:"29,90", user: User.all.sample)
product4.photo.attach(io: file, filename: filename)
product4.save

tsunade_photo = "https://res.cloudinary.com/dmcepupsl/image/upload/v1608303433/yc2egecj18oaqswktzwbkj4x9f2j.jpg"
file = URI.open(tsunade_photo)
filename = File.basename(URI.parse(tsunade_photo).path)
product5 = Product.new( name: "Camisa Tsunade", description: "Essa camisa de tsunade é muito boa", price:"29,90", user: User.all.sample)
product5.photo.attach(io: file, filename: filename)
product5.save

puts "Done"
