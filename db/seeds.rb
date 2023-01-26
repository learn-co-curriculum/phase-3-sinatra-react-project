puts "🌱 Seeding spices..."
puts "🌱 Seeding spices..."
Location.destroy_all
Character.destroy_all
Review.destroy_all
# Seed your database here
l1 = Location.create(name: "The Shire" , terrain: "Green pastures", inhabitants: "Hobbits", img_url: "https://media.cntraveller.com/photos/611be79fd5b6f5a4a3deec79/4:3/w_1704,h_1278,c_limit/hobbiton.jpg")
l2 = Location.create(name: "The Prancing Pony", terrain: "The local Inn", inhabitants: "Hobbits, Dwarves, Human", img_url: "https://greycompanypodcast.files.wordpress.com/2016/06/prancing_pony_tavern_by_daroz-d6htwmm.jpg")
l3 = Location.create(name: "Rohan", terrain: "Lovely Countryside", inhabitants: "Human", img_url: "https://preview.redd.it/lno2tug0zbn41.jpg?auto=webp&s=593e313aafb109394875b491b7dcd10df6e1a10d")
l4 = Location.create(name: "Rivendell", terrain: "Immaculate buildings, Rivers, Waterfalls", inhabitants: "Elves", img_url: "https://i.ytimg.com/vi/scKaksLN6x0/maxresdefault.jpg")
l5 = Location.create(name: "Moria", terrain: "Dark abandoned mines", inhabitants: "Goblins", img_url: "https://cdn1.epicgames.com/spt-assets/2ae760629a384d5199cbefc612db7ac8/the-lord-of-the-rings-return-to-moria-3xyn3.png")
l6 = Location.create(name: "Lothlorien", terrain: "Golden Trees", inhabitants: "Elves", img_url: "https://www.thetolkienforum.com/wiki-asset/?pid=494")
l7 = Location.create(name: "Nen Hitheol", terrain: "Large River", inhabitants: "Orcs", img_url: "https://storage.googleapis.com/moviemaps/img/34p.l2498.940.jpg")
l8 = Location.create(name: "Minas Tirith", terrain: "Tall city built into a mountain", inhabitants: "Human", img_url: "https://i.pinimg.com/originals/29/98/4e/29984e8bbc0282590014cf0579c904e7.jpg")
l9 = Location.create(name: "Shelobs Lair", terrain: "Cave", inhabitants: "Spiders", img_url: "https://www.thefandomentals.com/wp-content/uploads/2018/01/shelob09-1024x425.jpg")
l10 = Location.create(name: "Mordor", terrain: "Volcanic Wasteland", inhabitants: "Orcs", img_url: "https://www.wearethemighty.com/app/uploads/legacy/assets.rbl.ms/19464174/origin.jpg")

c1 = Character.create(name: "Bilbo Baggins", description: "Adventerous Hobbit, has been around much of middle earth. Bilbo was the first hobbit to become famous in the world at large, and one of the few to set foot in the Undying Lands.")
c2 = Character.create(name: "Gandalf", description: "Gandalf the Grey, later known as Gandalf the White, and originally named Olórin was an Istar (Wizard), dispatched to Middle-earth in the Third Age to combat the threat of Sauron.")
c3 = Character.create(name: "Gimli", description: "Gimli, son of Glóin, was a Dwarf of the House of Durin and a member of the Fellowship of the Ring. Unlike other Dwarves, he readily fought alongside Elves in the War of the Ring against Sauron at the end of the Third Age.")
c4 = Character.create(name: "King Elrond",  description: "Elrond, Half-elf, Lord of Rivendell, was a mighty Elf-ruler of old who dwelt in Middle-earth from the First Age to the beginning of the Fourth Age. He was the father of Elladan and Elrohir and Arwen Undómiel")
c5 = Character.create(name: "Aregorn", description: "Aragorn II, son of Arathorn II and Gilraen, also known as Elessar and Strider, was the 16th and last Chieftain of the Dúnedain of the North; later crowned King Elessar Telcontar (March 1, 2931 - FO 120), the 26th King of Arnor, 35th King of Gondor and first High King of Gondor and Arnor since the short reign of Isildur")
c6 = Character.create(name: "Galadriel",  description: "Galadriel was the Lady of the woods of Lothlórien, which she ruled with Celeborn, her husband. One of the greatest of the Elves in Middle-earth, she surpassed nearly all others in beauty, knowledge, and power.")
c7 = Character.create(name: "Boromir", description: "Boromir was a valiant warrior of Gondor, renowned for his prowess in combat and skill on the battlefield. He was the eldest son of Denethor II, who was Steward of Gondor during the War of the Ring, and his wife Finduilas. ")
c8 = Character.create(name: "Orcs", description: "Orcs were the primary soldiers of the Dark Lords' armies and the most common of their servants. They were conceived of by Morgoth during the Years of the Lamps, serving him and later his successor, Sauron, in their quest to dominate Middle-earth.")
c10 = Character.create(name: "Sauron", description: "the eponymous Lord of the Rings, was the greatest subversive Maia, the maker of the One Ring, renowned student of the Vala Aulë, and the most trusted lieutenant of Morgoth.")


Review.create(rating: 5, text: "Lovely hills and Great food, fantastic place to settle - Bilbo Baggins", character: c1, location: l1)
Review.create(rating: 3, text: "Good food and drink, met some pretty neat hobbits here once - Aragorn", character: c5, location: l2)
Review.create(rating: 4, text: "Cool city before the westfold fell - Aragorn", character: c5, location: l3)
Review.create(rating: 5, text: "Can't beat the architecture of elves - King Elrond", character: c4, location: l4)
Review.create(rating: 1, text: "Goblins ruined the neighborhood. - Gimli", character: c3, location: l5)
Review.create(rating: 5, text: "The weather is perfect, the grass is soft, the trees glow a golden hue, what more could you want? - Galadriel", character: c6, location: l6)
Review.create(rating: 1, text: "someone shot me with an arrow on my morning walk - Boromir", character: c7, location: l7)
Review.create(rating: 5, text: "An absolute spectacle of a city - Aragorn", character: c5, location: l8)
Review.create(rating: 1, text: "pretty sure I saw a guy get eaten - Orc", character: c8, location: l9)
Review.create(rating: 2, text: "don't mind the heat, but that eye is really bright at night - Orc", character: c8, location: l10)
Review.create(rating: 3, text: "I enjoy a good countryside but prefer mines to horses - Gimli", character: c3, location: l3)
Review.create(rating: 4, text: "Always enjoy my visits, just wish the doors were a little taller - Gandalf", character: c2, location: l1)
Review.create(rating: 1, text: "a little hot the last time I visited - Bilbo Baggins", character: c1, location: l5)
Review.create(rating: 1, text: "Too many Spiders - Bilbo Baggins", character: c1, location: l9)
Review.create(rating: 5, text: "The volcano is lovely this time of year - Sauron", character: c10, location: l10)
puts "✅ Done seeding!"
# Seed your database here

puts "✅ Done seeding!"
