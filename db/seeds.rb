puts "Deleting old data..."
House.destroy_all
User.destroy_all
Review.destroy_all

# Seed your database here

puts "🌱 Creating users..."
user1 = User.create(
    name: Faker::Name.name, 
    username: Faker::Internet.username,
    email: Faker::Internet.email, 
    image: Faker::Avatar.image, 
    bio: Faker::Hipster.paragraph)
user2 = User.create(
    name: Faker::Name.name, 
    username: Faker::Internet.username,
    email: Faker::Internet.email, 
    image: Faker::Avatar.image, 
    bio: Faker::Hipster.paragraph)
user3 = User.create(
    name: Faker::Name.name, 
    username: Faker::Internet.username,
    email: Faker::Internet.email, 
    image: Faker::Avatar.image, 
    bio: Faker::Hipster.paragraph)

puts "Creating houses..."
house1 = House.create(
    image: "https://cdn.luxe.digital/media/20220301155534/most-expensive-houses-in-the-world-buckingham-palace-london-luxe-digital-900x600.jpg.webp", 
    location: "London", 
    description: "quaint and charming, real taste of England")
house2 = House.create(
    image: "https://cdn.luxe.digital/media/20220301155528/most-expensive-houses-in-the-world-antilia-mumbai-luxe-digital-900x600.jpg.webp",
    location: "India", 
    description: "Amuzzzing")
house3 = House.create(
    image: "https://cdn.luxe.digital/media/20220301155550/most-expensive-houses-in-the-world-les-palais-bulles-luxe-digital-900x600.jpg.webp", 
    location: "France", 
    description: "Oui Oui")
house4 = House.create(
    image: "https://cdn.luxe.digital/media/20220301155619/most-expensive-houses-the-world-one-luxe-digital-900x600.jpg.webp", 
    location: "California", 
    description: "Supa chill... like so chill")
house5 = House.create(
    image: "https://cdn.luxe.digital/media/20220301155544/most-expensive-houses-in-the-world-four-fairfield-pond-luxe-digital-900x600.jpg.webp", 
    location: "New York", 
    description: "Our modest second home, very cozy")
house6 = House.create(
    image: "https://media.cntraveler.com/photos/580a61cd716cc04c20578525/master/pass/balfour-castle-GettyImages-170469848.jpg",
    location: "Scotland",
    description: "Great Scott!")
house7 = House.create(
    image: "http://prod-upp-image-read.ft.com/308bade4-3df6-11ea-b84f-a62c46f39bc2",
    location: "Switzerland",
    description: "my castle is your castle")
house8 = House.create(
    image: "https://www.jamesedition.com/stories/wp-content/uploads/2021/01/10.jpg",
    location: "Colorado",
    description: "pretty spacious")
house9 = House.create(
    image: "https://www.gannett-cdn.com/presto/2021/01/12/NPBD/08d0fd5e-2255-4d49-b608-e83342ae4615-PBN_POOL_REAR_535_N_County_Road_HiRes_PictureItSoldFL.jpg",
    location: "Florida",
    description: "we have a sick pool"
)
house10 = House.create(
    image: "https://media.cntraveler.com/photos/53dac23a6dec627b14a00b4d/16:9/w_2560%2Cc_limit/taj-palace-hotel-marrakech-morocco-3.jpg",
    location: "Morocco",
    description: "home away from home"
)


puts "Creating reviews..."
Review.create(
    house: house1, 
    user: user1, 
    rating: 5, 
    content: "GRRRREATT")
Review.create(
    house: house1, 
    user: user2, 
    rating: 3, 
    content: "okay")
Review.create(
    house: house2, 
    user: user1, 
    rating: 1, 
    content: "bad")
Review.create(
    house: house2, 
    user: user2, 
    rating: 1, 
    content: "messy")
Review.create(
    house: house6, 
    user: user3, 
    rating: 1, 
    content: "cramped")
Review.create(
    house: house3, 
    user: user1, 
    rating: 5, 
    content: "fantastic")
Review.create(
    house: house4, 
    user: user1, 
    rating: 2, 
    content: "meh")
Review.create(
    house: house5, 
    user: user2, 
    rating: 2, 
    content: "I've seen better"
)
Review.create(
    house: house6, 
    user: user3, 
    rating: 4, 
    content: "pleasantly surprised"
)
Review.create(
    house: house7, 
    user: user1, 
    rating: 3,
    content: "literally in the middle of nowhere"
)
Review.create(
    house: house10, 
    user: user2, 
    rating: 5,
    content: "would recommend"
)


puts "✅ Done seeding!"