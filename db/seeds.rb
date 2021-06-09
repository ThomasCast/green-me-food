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

producer1 = Producer.create(name:"Marcel", location:"Cavaillon", photo_url:"https://images.unsplash.com/photo-1517705185975-b3301eaa9c8e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1458&q=80", description:"Marcel 54ans, agriculteur depuis 6 générations, je beigne dans le melon depuis tout petit, on pourrait même dire que je suis né avec un melon entre les jambes.")
producer2 = Producer.create(name:"Jean", location:"Marseille", photo_url:"https://images.unsplash.com/photo-1569880153113-76e33fc52d5f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1500&q=80", description:"Bonjour, je m’appel Jean, j’ai 34ans, voilà maintenant 8ans que je produit dans ma petite usine du savon de Marseille avec la recette typique.")
producer3 = Producer.create(name:"Abdel", location:"Carpentras", photo_url:"https://images.unsplash.com/photo-1509506489701-dfe23b067808?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1536&q=80", description:"Bonjour, je suis Abdel, producteur des fameuses fraises de Carpentras.")
producer4 = Producer.create(name:"Kristel", location:"Banon", photo_url:"https://images.unsplash.com/photo-1589923188900-85dae523342b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80", description:"Hello, je vous présente Kristell, il y a maintenant 3ans que j’ai repris la chevrerie de mes parents à Banon pour produire le fameux fromage que l’on cherie tant, je bénéficie d’un savoir faire qui à été transmis de génération en génération.")
producer5 = Producer.create(name:"Sarah", location:"Marseille", photo_url:"https://images.unsplash.com/photo-1589922585618-dfd1fcd87c28?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1500&q=80", description:"Sarah, 29ans je suis productirce de Lavande de provence depuis maintenant 8ans.")

#Fruits
product = Product.create(name:"Melon", price: 3, photo_url:"https://images.unsplash.com/photo-1598533834006-7679b2aea830?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=802&q=80", description:"C'est du bon melon de Marcel sa mère.", producer_id: producer1)
product = Product.create(name:"Fraises", price: 4.30, photo_url:"https://images.unsplash.com/photo-1590831701857-a2d4a8921353?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80", description:"Fraises de Carpentras, les meilleures du mondes.", producer_id: producer3)
product = Product.create(name:"Framboises", price: , photo_url:"", description:"", producer_id: producer)
product = Product.create(name:"Oranges", price: , photo_url:"", description:"", producer_id: producer)
product = Product.create(name:"Raisin", price: , photo_url:"", description:"", producer_id: producer)
#Legumes
product = Product.create(name:"Tomates", price: , photo_url:"", description:"", producer_id: producer)
product = Product.create(name:"Oignons", price: , photo_url:"", description:"", producer_id: producer)
product = Product.create(name:"Courgettes", price: , photo_url:"", description:"", producer_id: producer)
#Viande
product = Product.create(name:"Côte de boeuf", price: , photo_url:"", description:"", producer_id: producer)
product = Product.create(name:"Foie de voeau", price: , photo_url:"", description:"", producer_id: producer)
#Poisson
product = Product.create(name:"Sardine", price: , photo_url:"", description:"", producer_id: producer)
product = Product.create(name:"Dorade", price: , photo_url:"", description:"", producer_id: producer)
#Crèmerie
product = Product.create(name:"Oeufs", price: , photo_url:"", description:"", producer_id: producer)
product = Product.create(name:"Banon", price: 8, photo_url:"https://images.unsplash.com/photo-1604323225010-1a38a5dee780?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80", description:"Fromage de chèvre à pate molle, essentiellemnt produit à Banon.", producer_id: producer4)
product = Product.create(name:"Crème fraiche", price: , photo_url:"", description:"", producer_id: producer)
#Epicerie salé
product = Product.create(name:"Coriandre", price: , photo_url:"", description:"", producer_id: producer)
product = Product.create(name:"Huile d'Olive", price: , photo_url:"", description:"", producer_id: producer)
product = Product.create(name:"Saucisson Corse", price: , photo_url:"", description:"", producer_id: producer)
#Epicerie sucré
product6 = Product.create(name:"Chocolat", price: , photo_url:"", description:"", producer_id: producer)
#Hygiène et Beauté
product = Product.create(name:"Lavande", price: 12, photo_url:"https://images.unsplash.com/photo-1580986584724-ae79be2aae43?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1510&q=80", description:"Lavande de provence, parfum doux et subtile à la foie.", producer_id: producer5)
product = Product.create(name:"Savon de Marseille", price: 7, photo_url:"https://images.unsplash.com/photo-1572527226808-051d3c05e7a1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80", description:"Le savon pour qui vous fera une peau de bébé.",  producer_id: producer2)
product = Product.create(name:"Crème de jour", price: , photo_url:"", description:"", producer_id: producer)
product = Product.create(name:"Dentifrice", price: , photo_url:"", description:"", producer_id: producer)
#Entretien et Netoyage
product = Product.create(name:"Lessive", price: , photo_url:"", description:"", producer_id: producer)

product = Product.create(name:"", price: , photo_url:"", description:"", producer_id: producer)

cat1 = Category.create(name: "Fruits", group: "Produits Frais", photo_url: "https://images.unsplash.com/photo-1610832958506-aa56368176cf?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80")
cat2 = Category.create(name: "Légumes", group: "Produits Frais", photo_url: "https://images.unsplash.com/photo-1566385101042-1a0aa0c1268c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=889&q=80")
cat3 = Category.create(name: "Viandes", group: "Produits Frais", photo_url: "https://images.unsplash.com/photo-1448907503123-67254d59ca4f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=749&q=80")
cat4 = Category.create(name: "Poissons", group: "Produits Frais", photo_url: "https://images.unsplash.com/photo-1615141982883-c7ad0e69fd62?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=667&q=80")
cat5 = Category.create(name: "Crèmerie", group: "Produits Frais", photo_url: "https://images.unsplash.com/photo-1552767059-ce182ead6c1b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80")
cat6 = Category.create(name: "Epicerie salé", group: "Produits Frais", photo_url: "https://images.unsplash.com/photo-1551462147-ff29053bfc14?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cGFzdGF8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
cat7 = Category.create(name: "Epicerie sucré", group: "Produits Frais", photo_url: "https://images.unsplash.com/photo-1610450949065-1f2841536c88?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2hvY29sYXRlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")

cat8 = Category.create(name: "Hygiène et Beauté", group: "Produits de la maison", photo_url: "https://images.unsplash.com/photo-1590439471364-192aa70c0b53?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80")
cat9 = Category.create(name: "Entretien et Netoyage", group: "Produits de la maison", photo_url: "https://images.unsplash.com/photo-1583907659441-addbe699e921?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y2xlYW5pbmd8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
cat = Category.create(name: "", group: "", photo_url: "")

puts "Finished"
