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

producer1 = Producer.create(name:"Marcel", location:"Cavaillon", photo_url:"https://unsplash.com/photos/mEBOHfzuPHk", description:"Marcel 54ans, agriculteur depuis 6 générations, je beigne dans le melon depuis tout petit, on pourrait même dire que je suis né avec un melon entre les jambes.")
producer2 = Producer.create(name:"Jean", location:"Marseille", photo_url:"https://unsplash.com/photos/1JgUGDdcWnM", description:"Bonjour, je m’appel Jean, j’ai 34ans, voilà maintenant 8ans que je produit dans ma petite usine du savon de Marseille avec la recette typique.")
producer3 = Producer.create(name:"Abdel", location:"Carpentras", photo_url:"https://unsplash.com/photos/7JPGg8S-QD4", description:"Bonjour, je suis Abdel, producteur des fameuses fraises de Carpentras.")
producer4 = Producer.create(name:"Kristel", location:"Banon", photo_url:"https://unsplash.com/photos/D_VjFp1ds1Y", description:"Hello, je vous présente Kristell, il y a maintenant 3ans que j’ai repris la chevrerie de mes parents à Banon pour produire le fameux fromage que l’on cherie tant, je bénéficie d’un savoir faire qui à été transmis de génération en génération.")
producer5 = Producer.create(name:"Sarah", location:"Marseille", photo_url:"https://unsplash.com/photos/Uqw8xp0LJIo", description:"Sarah, 29ans je suis productirce de Lavande de provence depuis maintenant 8ans.")

product1 = Product.create(name:"Melon", price: 3, photo_url:"https://unsplash.com/photos/ObRAfM60HQ0", description:"C'est du bon melon de Marcel sa mère.", producer_id: producer1)
product2 = Product.create(name:"Savon de Marseille", price: 7, photo_url:"https://unsplash.com/photos/vS_piUP3iHE", description:"Le savon pour qui vous fera une peau de bébé.",  producer_id: producer2)
product3 = Product.create(name:"Fraises", price: 4.30, photo_url:"https://unsplash.com/photos/Xiid7kYq4Jc", description:"Fraises de Carpentras, les meilleures du mondes.", producer_id: producer3)
product4 = Product.create(name:"Banon", price: 8, photo_url:"https://unsplash.com/photos/v9deD75EaRw", description:"Fromage de chèvre à pate molle, essentiellemnt produit à Banon.", producer_id: producer4)
product5 = Product.create(name:"Lavande", price: 12, photo_url:"https://unsplash.com/photos/2kptDvAfDjE", description:"Lavande de provence, parfum doux et subtile à la foie.", producer_id: producer5)

cat1 = Category.create(name: "Fruits", group: "Produits Frais", photo_url: "https://images.unsplash.com/photo-1610832958506-aa56368176cf?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80")
cat2 = Category.create(name: "Légumes", group: "Produits Frais", photo_url: "https://images.unsplash.com/photo-1566385101042-1a0aa0c1268c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=889&q=80")
cat3 = Category.create(name: "Viandes", group: "Produits Frais", photo_url: "https://images.unsplash.com/photo-1448907503123-67254d59ca4f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=749&q=80")
cat4 = Category.create(name: "Poissons", group: "Produits Frais", photo_url: "https://images.unsplash.com/photo-1615141982883-c7ad0e69fd62?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=667&q=80")
cat5 = Category.create(name: "Crèmerie", group: "Produits Frais", photo_url: "https://images.unsplash.com/photo-1552767059-ce182ead6c1b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80")

puts "Finished"
