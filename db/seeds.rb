# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."

Product.destroy_all
Category.destroy_all
User.destroy_all
Producer.destroy_all


user1 = User.create(email:"admin@lewagon.com", password:"123456")

producer1 = Producer.create(name:"Marcel", location:"Cavaillon", photo_url:"https://unsplash.com/photos/mEBOHfzuPHk", description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper.")
producer2 = Producer.create(name:"Jean", location:"Marseille", photo_url:"https://unsplash.com/photos/1JgUGDdcWnM", description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper.")
producer3 = Producer.create(name:"Abdel", location:"Carpentras", photo_url:"https://unsplash.com/photos/7JPGg8S-QD4", description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper.")
producer4 = Producer.create(name:"Kristel", location:"Banon", photo_url:"https://unsplash.com/photos/D_VjFp1ds1Y", description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper.")
producer5 = Producer.create(name:"Sarah", location:"Marseille", photo_url:"https://unsplash.com/photos/Uqw8xp0LJIo", description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper.")

product1 = Product.create(name:"Melon", price: 3, photo_url:"https://unsplash.com/photos/ObRAfM60HQ0", description:"C'est du bon melon de Marcel sa mère", category_id: category1.id, producer_id: producer1)
product2 = Product.create(name:"Savon de Marseille", price: 7, photo_url:"https://unsplash.com/photos/vS_piUP3iHE", description:"C'est du bon melon de Marcel sa mère", category_id: category1.id, producer_id: producer2)
product3 = Product.create(name:"Fraises", price: 4.30, photo_url:"https://unsplash.com/photos/Xiid7kYq4Jc", description:"C'est du bon melon de Marcel sa mère", category_id: category1.id, producer_id: producer3)
product4 = Product.create(name:"Banon", price: 8, photo_url:"https://unsplash.com/photos/v9deD75EaRw", description:"C'est du bon melon de Marcel sa mère", category_id: category1.id, producer_id: producer4)
product5 = Product.create(name:"Lavande", price: 12, photo_url:"https://unsplash.com/photos/2kptDvAfDjE", description:"C'est du bon melon de Marcel sa mère", category_id: category1.id, producer_id: producer5)

