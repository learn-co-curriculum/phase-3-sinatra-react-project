puts "🌱 Seeding spices..."

puts "Deleting old data..."
Animal.destroy_all
Like.destroy_all
Comment.destroy_all
User.destroy_all
Donation.destroy_all

puts "Creating users..."
user1 = User.create(name: Faker::Name.name, location: "San Francisco, CA", username: "user1", password: "12345")
user2 = User.create(name: Faker::Name.name, location: "New Orleans, LA", username: "user2", password: "12345")
user3 = User.create(name: Faker::Name.name, location: "Seattle, WA", username: "user3", password: "12345")
user4 = User.create(name: "Sherlock Holmes", location: "London, England", username: "221B", password: "12345")
user5 = User.create(name: "Charlie Brown", location: "Minneapolis, MN", username: "Snoopy", password: "12345")

puts "Creating animals..."
animal1 = Animal.create(
    name: "Mr. Rumpus", 
    species: "Wombat",
    description: "A short-legged, muscular quadrupedal marsupials that are native to Australia.",
    image_url: "https://i.pinimg.com/originals/42/6d/20/426d20b806f648ee9fda91ac3fb3e7b2.jpg",
    adopted?: true,
    user_id: user1.id
)
animal2 = Animal.create(
    name: "Cherry", 
    species: "Red Panda",
    description: "AKA the lesser panda, is a small mammal native to the eastern Himalayas and southwestern China.",
    image_url: "https://i.natgeofe.com/k/63b1a8a7-0081-493e-8b53-81d01261ab5d/red-panda-full-body_16x9.jpg?w=1200",
    adopted?: false
)
animal3 = Animal.create(
    name: "Sher Khan", 
    species: "Bengal Tiger",
    description: "A population of the Panthera tigris tigris subspecies. It ranks among the biggest wild cats alive today. It is considered to belong to the world's charismatic megafauna.",
    image_url: "https://biologydictionary.net/wp-content/uploads/2020/07/Bengal-tiger-1.jpg",
    adopted?: true,
    user_id: user1.id
)
animal4 = Animal.create(
    name: "Prince Capupu", 
    species: "Tasmanian Devil",
    description: "A carnivorous marsupial of the family Dasyuridae. Until recently, it was only found on the island state of Tasmania, but it has been reintroduced to New South Wales in mainland Australia, with a small breeding population.",
    image_url: "https://i.natgeofe.com/k/92577755-6c8b-4539-a47f-effcafb46b3f/tasmanian-devil-red-ears-log_square.jpg",
    adopted?: false
)
animal5 = Animal.create(
    name: "Snow", 
    species: "Polar Bear",
    description: "A hypercarnivorous bear whose native range lies largely within the Arctic Circle, encompassing the Arctic Ocean, its surrounding seas and surrounding land masses. It is the largest extant bear species, as well as the largest extant land carnivore.",
    image_url: "https://www.ourendangeredworld.com/wp-content/uploads/2021/07/Polar-Bear.jpg",
    adopted?: true,
    user_id: user3.id
)
animal6 = Animal.create(
    name: "Happy", 
    species: "Quokka",
    description: "AKA the short-tailed scrub wallaby, is a small macropod about the size of a domestic cat. It is the only member of the genus Setonix. Like other marsupials in the macropod family (such as kangaroos and wallabies), the quokka is herbivorous and mainly nocturnal.",
    image_url: "https://allthatsinteresting.com/wordpress/wp-content/uploads/2020/03/quokka-leaf-smile.jpg",
    adopted?: true,
    user_id: user4.id
)
animal7 = Animal.create(
    name: "Grizz", 
    species: "Grizzly Bear",
    description: "AKA the North American brown bear or simply grizzly, is a population or subspecies of the brown bear inhabiting North America.",
    image_url: "https://bestlifeonline.com/wp-content/uploads/sites/3/2019/04/brown-bear-waving-at-the-zoo.jpg",
    adopted?: false,
)
animal8 = Animal.create(
    name: "Cartier", 
    species: "Black Panther",
    description: "The melanistic colour variant of the leopard (Panthera pardus) and the jaguar (Panthera onca). Black panthers of both species have excess black pigments, but their typical rosettes are also present.",
    image_url: "https://a-z-animals.com/media/animals/images/original/panther.jpg",
    adopted?: false,
)
animal9 = Animal.create(
    name: "Pandasaurus Rex", 
    species: "Giant Panda",
    description: "AKA the panda bear (or simply the panda), is a bear species endemic to China. It is characterised by its bold black-and-white coat and rotund body. The name 'giant panda' is sometimes used to distinguish it from the red panda, a neighboring musteloid.",
    image_url: "https://i.natgeofe.com/k/6f2282df-1c6a-474a-9216-ed97b3dce858/Panda-Bamboo_Panda-Quiz_KIDS_1021.jpg",
    adopted?: false,
)
animal10 = Animal.create(
    name: "Sleepy", 
    species: "Koala",
    description: "inaccurately, koala bear (Phascolarctos cinereus) is an arboreal herbivorous marsupial native to Australia. It is the only extant representative of the family Phascolarctidae and its closest living relatives are the wombats. The koala is found in coastal areas of the mainland's eastern and southern regions, inhabiting Queensland, New South Wales, Victoria, and South Australia.",
    image_url: "https://www.newcastle.edu.au/__data/assets/image/0011/706754/varieties/sidebar_cal_thumb.jpg",
    adopted?: false,
)


puts "Creating donations..."
Donation.create(
    amount: 10,
    animal_id: animal5.id,
    user_id: user2.id
)

Donation.create(
    amount: 5,
    animal_id: animal2.id,
    user_id: user3.id
)

Donation.create(
    amount: 20,
    animal_id: animal1.id,
    user_id: user2.id
)

puts "Creating likes..."
Like.create(
    animal_id: animal1.id,
    user_id: user2.id
)

Like.create(
    animal_id: animal3.id,
    user_id: user1.id
)

Like.create(
    animal_id: animal2.id,
    user_id: user1.id
)

Like.create(
    animal_id: animal3.id,
    user_id: user3.id
)

puts "Creating comments..."
Comment.create(
    message: "Cute wombat!",
    animal_id: animal1.id,
    user_id: user3.id
)

Comment.create(
    message: "I'm going to adopt you next!",
    animal_id: animal5.id,
    user_id: user2.id
)

Comment.create(
    message: "I wonder what he eats.",
    animal_id: animal3.id,
    user_id: user1.id
)

Comment.create(
    message: "Why are you not named Taz?",
    animal_id: animal4.id,
    user_id: user3.id
)

Comment.create(
    message: "He is a royalty!",
    animal_id: animal4.id,
    user_id: user1.id
)

puts "✅ Done seeding!"