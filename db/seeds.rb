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

puts "Creating database..."

user1 = User.create(email:"admin@lewagon.com", password:"123456")

producer1 = Producer.create(name:"Marcel", location:"Cavaillon", photo_url:"https://unsplash.com/photos/mEBOHfzuPHk", description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper.")
producer2 = Producer.create(name:"Jean", location:"Marseille", photo_url:"https://unsplash.com/photos/1JgUGDdcWnM", description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper.")
producer3 = Producer.create(name:"Abdel", location:"Carpentras", photo_url:"https://unsplash.com/photos/7JPGg8S-QD4", description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper.")
producer4 = Producer.create(name:"Kristel", location:"Banon", photo_url:"https://unsplash.com/photos/D_VjFp1ds1Y", description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper.")
producer5 = Producer.create(name:"Sarah", location:"Marseille", photo_url:"https://unsplash.com/photos/Uqw8xp0LJIo", description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper.")

product1 = Product.create(name:"Melon", price: 3, photo_url:"https://unsplash.com/photos/ObRAfM60HQ0", description:"C'est du bon melon de Marcel sa mère", producer_id: producer1)
product2 = Product.create(name:"Savon de Marseille", price: 7, photo_url:"https://unsplash.com/photos/vS_piUP3iHE", description:"C'est du bon melon de Marcel sa mère",  producer_id: producer2)
product3 = Product.create(name:"Fraises", price: 4.30, photo_url:"https://unsplash.com/photos/Xiid7kYq4Jc", description:"C'est du bon melon de Marcel sa mère", producer_id: producer3)
product4 = Product.create(name:"Banon", price: 8, photo_url:"https://unsplash.com/photos/v9deD75EaRw", description:"C'est du bon melon de Marcel sa mère", producer_id: producer4)
product5 = Product.create(name:"Lavande", price: 12, photo_url:"https://unsplash.com/photos/2kptDvAfDjE", description:"C'est du bon melon de Marcel sa mère", producer_id: producer5)

cat1 = Category.create(name: "Fruits", group: "Produits Frais", photo_url: "https://images.unsplash.com/photo-1610832958506-aa56368176cf?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80")
cat2 = Category.create(name: "Légumes", group: "Produits Frais", photo_url: "https://images.unsplash.com/photo-1566385101042-1a0aa0c1268c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=889&q=80")
cat3 = Category.create(name: "Viandes", group: "Produits Frais", photo_url: "https://images.unsplash.com/photo-1448907503123-67254d59ca4f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=749&q=80")
cat4 = Category.create(name: "Poissons", group: "Produits Frais", photo_url: "https://images.unsplash.com/photo-1615141982883-c7ad0e69fd62?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=667&q=80")
cat5 = Category.create(name: "Crèmerie", group: "Produits Frais", photo_url: "https://images.unsplash.com/photo-1552767059-ce182ead6c1b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80")

puts "Finished"