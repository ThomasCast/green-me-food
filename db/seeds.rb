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
product = Product.create(name:"Framboises", price: 3.80 , photo_url:"", description:"https://images.unsplash.com/photo-1593461802389-d57d73a36913?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8cmFzcGJlcnJ5fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", producer_id: producer)
product = Product.create(name:"Oranges", price: 2.90, photo_url:"https://images.unsplash.com/photo-1547514701-42782101795e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8b3JhbmdlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
product = Product.create(name:"Raisin", price: 3.70, photo_url:"https://images.unsplash.com/photo-1578903016352-f2d7f3940d03?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Z3JhcHBlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
product = Product.create(name:"Citron", price: 3.60, photo_url:"https://images.unsplash.com/photo-1605185189315-fc269c231e41?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8bGVtb258ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
product = Product.create(name:"Cerises Griottes", price: 3.05, photo_url:"https://images.unsplash.com/photo-1435910083655-98a18caf9b3a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGNoZXJyeXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
product = Product.create(name:"Olives vertes", price: 3.10, photo_url:"https://images.unsplash.com/photo-1591122523233-22037c1dec9f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8b2xpdmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
#Legumes
product = Product.create(name:"Tomates", price: 4.20, photo_url:"https://images.unsplash.com/photo-1534940519139-f860fb3c6e38?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHRvbWF0b3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
product = Product.create(name:"Oignons", price: 3.25, photo_url:"https://images.unsplash.com/photo-1524593564501-fd747698ddf7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8b2lnbm9ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
product = Product.create(name:"Courgettes", price: 3.45, photo_url:"https://images.unsplash.com/photo-1563252722-6434563a985d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8enVjY2hpbml8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
product = Product.create(name:"Carottes", price: 2.20, photo_url:"https://images.unsplash.com/photo-1445282768818-728615cc910a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2Fyb3R8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
product = Product.create(name:"Aubergines", price: 2.70 , photo_url:"https://images.unsplash.com/photo-1605197378540-10ebaf6999e5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZWdncGxhbnR8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
product = Product.create(name:"Poivrons", price: 2.80, photo_url:"https://images.unsplash.com/photo-1509377244-b9820f59c12f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y2Fwc2ljdW18ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
product = Product.create(name:"Poireaux", price: 2.20, photo_url:"https://images.unsplash.com/photo-1602769515559-e15133a7e992?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bGVla3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
#Viande
product = Product.create(name:"Côte de boeuf", price: 12.80, photo_url:"https://images.unsplash.com/photo-1448907503123-67254d59ca4f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bWVhdHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
product = Product.create(name:"Foie de voeau", price: 17.50, photo_url:"https://images.unsplash.com/photo-1603048374877-b98f840ad441?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fG1lYXR8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
product = Product.create(name:"Mergez", price: 2.80, photo_url:"https://images.unsplash.com/photo-1547424450-75ec164925ad?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHNhdXNhZ2V8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
product = Product.create(name:"Jambon Blanc", price: 5.50, photo_url:"https://images.unsplash.com/photo-1524438418049-ab2acb7aa48f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aGFtfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
#Poisson
product = Product.create(name:"Sardine", price: 8.90, photo_url:"https://images.unsplash.com/photo-1442706722731-7284acc0a2d7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzR8fGZpc2h8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
product = Product.create(name:"Dorade", price: 17.60, photo_url:"https://images.unsplash.com/photo-1498654200943-1088dd4438ae?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8ZmlzaHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
product = Product.create(name:"Anchois", price: 7.20, photo_url:"https://images.unsplash.com/photo-1580317092109-12571feb44f3?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZmlzaCUyMHNtYWxsfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
product = Product.create(name:"Loup", price: 15.50, photo_url:"https://images.unsplash.com/photo-1551075335-5c7f7fed6f27?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZmlzaCUyMHNtYWxsfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
product = Product.create(name:"Merlu", price: 12.49, photo_url:"https://images.unsplash.com/photo-1510130387422-82bed34b37e9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZmlzaHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
product = Product.create(name:"Mérou", price: 24.50, photo_url:"https://images.unsplash.com/photo-1500732917506-30dc38b6477f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fGZpc2h8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
#Crèmerie
product = Product.create(name:"Oeufs", price: 2.99, photo_url:"https://images.unsplash.com/photo-1506976785307-8732e854ad03?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZWdnc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
product = Product.create(name:"Banon", price: 8, photo_url:"https://images.unsplash.com/photo-1604323225010-1a38a5dee780?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80", description:"Fromage de chèvre à pate molle, essentiellemnt produit à Banon.", producer_id: producer4)
product = Product.create(name:"Crème fraiche", price: 3.10, photo_url:"https://images.unsplash.com/photo-1573810655264-8d1e50f1592d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y3JlYW0lMjBjaGVlc2V8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
product = Product.create(name:"Yaourt aux fruits", price: 4.50, photo_url:"https://images.unsplash.com/photo-1555536309-73b02687f677?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y3JlYW0lMjBjaGVlc2V8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
product = Product.create(name:"Lait demi-écrémés", price: 2.20, photo_url:"https://images.unsplash.com/photo-1523473827533-2a64d0d36748?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8bWlsa3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
product = Product.create(name:"Tofu", price: 8.20, photo_url:"https://images.unsplash.com/photo-1596352670192-5a95e357df7b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dG9mdXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
#Epicerie salé
product = Product.create(name:"Coriandre", price: 1.80, photo_url:"https://images.unsplash.com/photo-1535189487909-a262ad10c165?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y29yaWFuZGVyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
product = Product.create(name:"Huile d'Olive", price: 7.20, photo_url:"https://images.unsplash.com/photo-1474979266404-7eaacbcd87c5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8b2xpdmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
product = Product.create(name:"Saucisson Corse", price: 4.60, photo_url:"https://images.unsplash.com/photo-1502333052765-1424f32cf5ca?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fHNhdXNhZ2V8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
product = Product.create(name:"Basilic", price: 1.95, photo_url:"https://images.unsplash.com/photo-1500420254515-0faefa2dac99?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YmFzaWx8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
product = Product.create(name:"Ail", price: 2.70, photo_url:"https://images.unsplash.com/photo-1540148426945-6cf22a6b2383?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Z2FybGljfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
#Epicerie sucré
product6 = Product.create(name:"Chocolat", price: 3.69, photo_url:"https://images.unsplash.com/photo-1511381939415-e44015466834?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y2hvY29sYXRlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
product = Product.create(name:"Calisson d'Aix", price: 2.79, photo_url:"https://images.unsplash.com/photo-1571159400828-9ee6beeb3f4a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c3dlZXRpZXN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
product = Product.create(name:"sucre", price: 1.99, photo_url:"https://images.unsplash.com/photo-1581268497089-7a975fb491a3?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8c3VnYXJ8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
#Hygiène et Beauté
product = Product.create(name:"Lavande", price: 12, photo_url:"https://images.unsplash.com/photo-1580986584724-ae79be2aae43?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1510&q=80", description:"Lavande de provence, parfum doux et subtile à la foie.", producer_id: producer5)
product = Product.create(name:"Savon de Marseille", price: 7, photo_url:"https://images.unsplash.com/photo-1572527226808-051d3c05e7a1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80", description:"Le savon pour qui vous fera une peau de bébé.",  producer_id: producer2)
product = Product.create(name:"Crème de jour ", price: 8.50, photo_url:"https://images.unsplash.com/photo-1585232351009-aa87416fca90?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGRheSUyMGNyZWFtfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
product = Product.create(name:"Dentifrice en poudre", price: 2.50, photo_url:"https://images.unsplash.com/photo-1605615016732-03add3ee505d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHRvb3RocGFzdGUlMjBwb3VkcmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)
#Entretien et Netoyage
product = Product.create(name:"Lessive", price: 8.90, photo_url:"https://images.unsplash.com/photo-1599141928577-ec13201882be?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGxhdW5kcnklMjBwb3VkcmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", description:"", producer_id: producer)

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

