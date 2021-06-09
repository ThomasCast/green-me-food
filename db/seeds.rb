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

#Producteurs produits frais
producer = Producer.create(name:"", location:"", photo_url:"", description:"")
producer_melon = Producer.create(name:"Marcel", location:"Cavaillon", photo_url:"https://images.unsplash.com/photo-1517705185975-b3301eaa9c8e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1458&q=80", description:"Marcel 54ans, agriculteur depuis 6 générations, je beigne dans le melon depuis tout petit, on pourrait même dire que je suis né avec un melon entre les jambes.")
producer_fraises_framboises = Producer.create(name:"Abdel", location:"Carpentras", photo_url:"https://images.unsplash.com/photo-1509506489701-dfe23b067808?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1536&q=80", description:"Bonjour, je suis Abdel, producteur des fameuses fraises de Carpentras.")
producer_oranges = Producer.create(name:"Lucas", location:"Tarascon", photo_url:"", description:"Producteur d'orange de père en fils, tous mes produits sont issus de ma ferme et sont issu d'un agriculture saine et durable. Aujourd'hui, je suis heureux de partager mes produits et mon savoir faire.")
producer_raisin = Producer.create(name:"Stéphane", location:"Baumes-de-Venise", photo_url:"", description:"Ma famille est issue de Baumes-de-Venise. Nous exploitons aujourd'hui une trentaine d'hectars de vignes repartis dans le secteurs. Mon père m'a transmit son savoir faire, que je suis heureux aujourd'hui de vous transmettre")
producer_legumes = Producer.create(name:"Stéphanie", location:"Barjol", photo_url:"", description:"Cela fait maintenant 10 ans que je suis dans la production de légumes. Avant j'étais compatble et j'ai toujours voulu me reconvertir dans l'agriculture ! Me rapprocher de la nature est pour moi essentiel. J'espère sincèrement que mes produits vous plairons, c'est avec amour que je les ai produits !")
producer_viande = Producer.create(name:"Jean-Jacques", location:"Malaucène", photo_url:"", description:"Mon exploitation est en pleins de coeurs des fameux vignobles de la vallée du Rhône, quoi de mieux pour savourer une bonne viande issue de l'agriculture écologique! Ma viande est uniquement issue de mon exploitation, et elle est produite avec amour!")
producer_poisson = Producer.create(name:"Ordralfabétix", location:"L'Estaque", photo_url:"", description:"Savez-vous qu'un jour, le port de Marseille a été bloqué par une sardine? Je pêche mes poissons moi-même avec mes deux fils, tous les matins dans la Mediterranée, au large de Marseille. J'espère que vous apprécierez le fruit de mon travail !")
producer_cremerie = Producer.create(name:"Kristel", location:"Banon", photo_url:"https://images.unsplash.com/photo-1589923188900-85dae523342b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80", description:"Hello, je vous présente Kristell, il y a maintenant 3ans que j’ai repris l'exploitation de mes parents à Banon pour produire le fameux fromage et le lait que l’on cherie tant, je bénéficie d’un savoir faire qui à été transmis de génération en génération.")
producer_coriandre_huile = Producer.create(name:"Marc", location:"Nyons", photo_url:"", description:"C'est avec plaisir que je vous présente mes produits. Il y a peut de temps que j'ai repris l'exploitation de mon père, afin de faire perdurer l'héritage famillial. Mon huile ainsi que ma coriandre sont produites artisanalement et de manière durable.")
producer_saucisson = Producer.create(name:"Dume", location:"Bastia", photo_url:"", description:"Située en plein coeur de la Corse, je produis mes saucissons de manière artisanale.")
producer_sucre = Producer.create(name:"Philippe", location:"Orange", photo_url:"", description:"Depuis ma plus tendre enfance, j'adore le chocolat. Plus grand, j'ai appris a travailler cette matière peut commune au côté de grands chocolatiers. J'espère que vous apprécierez chacun de ces petits carrés de bonheur, car ils ont été fait avec amour.")

#Producteurs prdduits de la maison
producer_hygiene_beaute = Producer.create(name:"Sixtine", location:"Marseille", photo_url:"https://images.unsplash.com/photo-1589922585618-dfd1fcd87c28?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1500&q=80", description:"Avant de debuter dans la confection de savons et produits de beauté, j'ai été dermatologue. C'est donc avec respect de votre peau et de l'environnement que je conçois mes produits")
producer_entretien_nettoyage = Producer.create(name:"Oscar", location:"Marseille", photo_url:"https://images.unsplash.com/photo-1569880153113-76e33fc52d5f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1500&q=80", description:"Tous mes produits sont confectionnés au coeur de Marseille, tout près du vieux port. Ils sont fabriqués dans le respect de l'environnement et sont testés dermatologiquement. Ce qui est bon pour nous est aussi bon pour la nature!")

producer1 = Producer.create(name:"", location:"", photo_url:"", description:"")

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
product = Product.create(name:"Lavande", price: 7.00, photo_url:"https://images.unsplash.com/photo-1580986584724-ae79be2aae43?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1510&q=80", description:"/20gr", producer_id: producer5, category_id: cat8.id)
product = Product.create(name:"Savon de Marseille", price: 13.00, photo_url:"https://images.unsplash.com/photo-1572527226808-051d3c05e7a1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80", description:"p",  producer_id: producer2, category_id: cat8.id)
product = Product.create(name:"Crème de jour", price: 12.00, photo_url:"", description:"p", producer_id: producer, category_id: cat8.id)
product = Product.create(name:"Crème solaire", price: 15.00, photo_url:"", description:"p", producer_id: producer, category_id: cat8.id)
product = Product.create(name:"Dentifrice", price: 4.70, photo_url:"", description:"p", producer_id: producer, category_id: cat8.id)
#Entretien et Netoyage
product = Product.create(name:"Lessive", price: 15.00, photo_url:"", description:"2L", producer_id: producer, category_id: cat9.id)
product = Product.create(name:"Vinaigre blanc", price: 3.00 , photo_url:"", description:"p", producer_id: producer, category_id: cat9.id)
product = Product.create(name:"Papier toilettes", price: 7.00 , photo_url:"", description:"6p", producer_id: producer, category_id: cat9.id)


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

