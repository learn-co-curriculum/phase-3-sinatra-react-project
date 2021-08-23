puts "Clearing old data..."

AnimalLog.destroy_all
Zookeeper.destroy_all
Animal.destroy_all


puts "🌱 Seeding Poo data..."
Zookeeper.create(name: "Carole Baskin", image: 'https://www.indiewire.com/wp-content/uploads/2020/04/Screen-Shot-2020-04-01-at-3.02.44-PM.png')
Zookeeper.create(name: "Tara Kelly", image: 'https://www.freepnglogos.com/uploads/potato-png/potato-clipart-transparent-pencil-and-color-potato-31.png')
Zookeeper.create(name: "Jessica Lee", image: 'https://spng.pngfind.com/pngs/s/55-557834_potato-spud-hd-png-download.png')
Zookeeper.create(name: "Luke Otwell", image: 'https://creazilla-store.fra1.digitaloceanspaces.com/cliparts/64143/angry-potato-clipart-md.png')

Animal.create(name: "Adam", image:'https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Lion_waiting_in_Namibia.jpg/440px-Lion_waiting_in_Namibia.jpg', birthdate: May 2, 1980, species: "Lion")
Animal.create(name: "Toni", image:'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Walking_tiger_female.jpg/440px-Walking_tiger_female.jpg', birthdate: March 14, 1993, species: "Tiger")
Animal.create(name: "Antonio", image:'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Giraffe_Mikumi_National_Park.jpg/440px-Giraffe_Mikumi_National_Park.jpg', birthdate: September 13, 1986, species: "Giraffe")
Animal.create(name: "Dakota", image:'https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Pomeranian.JPG/440px-Pomeranian.JPG', birthdate: February 2, 1987, species: "Pomeranian")


puts "✅ Done seeding!"


