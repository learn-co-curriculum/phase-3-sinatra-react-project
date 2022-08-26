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
user6 = User.create(name: "Jane Hopper", location: "Hawkins, IN", username: "Eleven", password: "12345")
user7 = User.create(name: "Cocoa Puffs", location: "Hayward, CA", username: "Rat Boy", password: "12345")
user8 = User.create(name: "Daenerys Targaryen", location: "King's Landing, Westeros", username: "Khaleesi", password: "12345")

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
    adopted?: false
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
    adopted?: false
)
animal8 = Animal.create(
    name: "Cartier", 
    species: "Black Panther",
    description: "The melanistic colour variant of the leopard (Panthera pardus) and the jaguar (Panthera onca). Black panthers of both species have excess black pigments, but their typical rosettes are also present.",
    image_url: "https://a-z-animals.com/media/animals/images/original/panther.jpg",
    adopted?: false
)
animal9 = Animal.create(
    name: "Pandasaurus Rex", 
    species: "Giant Panda",
    description: "AKA the panda bear (or simply the panda), is a bear species endemic to China. It is characterised by its bold black-and-white coat and rotund body. The name 'giant panda' is sometimes used to distinguish it from the red panda, a neighboring musteloid.",
    image_url: "https://i.natgeofe.com/k/6f2282df-1c6a-474a-9216-ed97b3dce858/Panda-Bamboo_Panda-Quiz_KIDS_1021.jpg",
    adopted?: false,
    user_id: user3.id
)
animal10 = Animal.create(
    name: "Sleepy", 
    species: "Koala",
    description: "inaccurately, koala bear (Phascolarctos cinereus) is an arboreal herbivorous marsupial native to Australia. It is the only extant representative of the family Phascolarctidae and its closest living relatives are the wombats. The koala is found in coastal areas of the mainland's eastern and southern regions, inhabiting Queensland, New South Wales, Victoria, and South Australia.",
    image_url: "https://www.newcastle.edu.au/__data/assets/image/0011/706754/varieties/sidebar_cal_thumb.jpg",
    adopted?: true,
    user_id: user6.id
)

animal11 = Animal.create(
    name: "Mr. Toucan",
    species: "Toucan",
    description: "Members of the Neotropical near passerine bird family Ramphastidae. The Ramphastidae are most closely related to the American barbets. They are brightly marked and have large, often colorful bills. The family includes five genera and over forty different species.",
    image_url: "https://site-547756.mozfiles.com/files/547756/medium/Toucan5.jpg",
    adopted?: true,
    user_id: user6.id
)

animal12 = Animal.create(
    name: "Leo",
    species: "Leopard",
    description: "One of the five extant species in the genus Panthera, a member of the cat family, Felidae. It occurs in a wide range in sub-Saharan Africa, in some parts of Western and Central Asia, Southern Russia, and on the Indian subcontinent to Southeast and East Asia. It is listed as Vulnerable on the IUCN Red List because leopard populations are threatened by habitat loss and fragmentation, and are declining in large parts of the global range.",
    image_url: "https://www.krugerpark.co.za/images/leopard-kruger-rh-786x500.jpg",
    adopted?: true,
    user_id: user3.id
)

animal13 = Animal.create(
    name: "Sunny",
    species: "Sun Bear",
    description: "A species in the family Ursidae occurring in the tropical forests of Southeast Asia. It is the smallest bear, standing nearly 70 centimetres (28 inches) at the shoulder and weighing 25–65 kilograms (55–143 pounds). It is stockily built, with large paws, strongly curved claws, small rounded ears and a short snout. The fur is generally jet-black, but can vary from grey to red. Sun bears get their name from the characteristic orange to cream coloured chest patch. Its unique morphology—inward-turned front feet, flattened chest, powerful forelimbs with large claws—suggests adaptations for climbing.",
    image_url: "https://i.natgeofe.com/k/c483a663-f10b-41f9-ad47-14f08b1b2595/sun-bear-tongue_4x3.jpg",
    adopted?: false
)

animal14 = Animal.create(
    name: "Silver",
    species: "Arapaima",
    description: "Any large species of bonytongue in the genus Arapaima native to the Amazon and Essequibo basins of South America. Arapaima is the type genus of the subfamily Arapaiminae within the family Osteoglossidae. They are among the world's largest freshwater fish, reaching as much as 3 m (9.8 ft) in length. They are an important food fish.",
    image_url: "https://nationalzoo.si.edu/sites/default/files/styles/1400_scale/public/animals/arapaima-003.jpg?itok=_2O_uuXp",
    adopted?: false
)

animal15 = Animal.create(
    name: "Nymeria",
    species: "Wolf",
    description: "AKA the gray wolf or grey wolf, is a large canine native to Eurasia and North America. More than thirty subspecies of Canis lupus have been recognized, and gray wolves, as popularly understood, comprise wild subspecies. The wolf is the largest extant member of the family Canidae. It is also distinguished from other Canis species by its less pointed ears and muzzle, as well as a shorter torso and a longer tail.",
    image_url: "https://www.pbs.org/wnet/nature/files/2020/02/pexels-photo-682375.jpg",
    adopted?: true,
    user_id: user5.id
)

animal16 = Animal.create(
    name: "King",
    species: "Gorilla",
    description: "Herbivorous, predominantly ground-dwelling great apes that inhabit the tropical forests of equatorial Africa. The genus Gorilla is divided into two species: the eastern gorilla and the western gorilla, and either four or five subspecies. The DNA of gorillas is highly similar to that of humans, from 95 to 99% depending on what is included, and they are the next closest living relatives to humans after chimpanzees and bonobos.",
    image_url: "https://files.worldwildlife.org/wwfcmsprod/images/Mountain_Gorilla_Silverback_WW22557/story_full_width/36fcoamev0_Mountain_Gorilla_Silverback_WW22557.jpg",
    adopted?: false
)

animal17 = Animal.create(
    name: "Cuddles",
    species: "Otter",
    description: "Carnivorous mammals in the subfamily Lutrinae. The 13 extant otter species are all semiaquatic, aquatic, or marine, with diets based on fish and invertebrates. Lutrinae is a branch of the Mustelidae family, which also includes weasels, badgers, mink, and wolverines, among other animals.",
    image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/Sea_Otter_%28Enhydra_lutris%29_%2825169790524%29_crop.jpg/800px-Sea_Otter_%28Enhydra_lutris%29_%2825169790524%29_crop.jpg",
    adopted?: true,
    user_id: user5.id
)

animal18 = Animal.create(
    name: "Godzilla",
    species: "Komodo Dragon",
    description: "AKA the Komodo monitor, is a member of the monitor lizard family Varanidae that is endemic to the Indonesian islands of Komodo, Rinca, Flores, and Gili Motang. It is the largest extant species of lizard, growing to a maximum length of 3 metres (10 ft), and weighing up to approximately 70 kilograms (150 lb).",
    image_url: "https://c.files.bbci.co.uk/146B5/production/_126173638_gettyimages-1177993068.jpg",
    adopted?: true,
    user_id: user8.id
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
    animal_id: animal1.id,
    user_id: user1.id
)

Like.create(
    animal_id: animal1.id,
    user_id: user3.id
)

Like.create(
    animal_id: animal18.id,
    user_id: user8.id
)

Like.create(
    animal_id: animal18.id,
    user_id: user7.id
)

Like.create(
    animal_id: animal9.id,
    user_id: user5.id
)

Like.create(
    animal_id: animal9.id,
    user_id: user4.id
)

Like.create(
    animal_id: animal9.id,
    user_id: user8.id
)

Like.create(
    animal_id: animal9.id,
    user_id: user3.id
)

Like.create(
    animal_id: animal4.id,
    user_id: user5.id
)

Like.create(
    animal_id: animal4.id,
    user_id: user7.id
)

Like.create(
    animal_id: animal4.id,
    user_id: user3.id
)

Like.create(
    animal_id: animal10.id,
    user_id: user1.id
)

Like.create(
    animal_id: animal10.id,
    user_id: user2.id
)

Like.create(
    animal_id: animal6.id,
    user_id: user3.id
)

Like.create(
    animal_id: animal6.id,
    user_id: user5.id
)

Like.create(
    animal_id: animal6.id,
    user_id: user6.id
)

Like.create(
    animal_id: animal7.id,
    user_id: user1.id
)

Like.create(
    animal_id: animal14.id,
    user_id: user4.id
)

Like.create(
    animal_id: animal12.id,
    user_id: user2.id
)

Like.create(
    animal_id: animal12.id,
    user_id: user1.id
)

Like.create(
    animal_id: animal12.id,
    user_id: user4.id
)

Like.create(
    animal_id: animal2.id,
    user_id: user2.id
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
    message: "This looks like a dragon to me.",
    animal_id: animal18.id,
    user_id: user8.id
)

Comment.create(
    message: "I wonder what he eats.",
    animal_id: animal3.id,
    user_id: user1.id
)

Comment.create(
    message: "Scary!",
    animal_id: animal18.id,
    user_id: user1.id
)

Comment.create(
    message: "I'll need a huge pond in my backyard for this guy.",
    animal_id: animal14.id,
    user_id: user5.id
)

Comment.create(
    message: "Nice tinder photo! LOL.",
    animal_id: animal8.id,
    user_id: user6.id
)

Comment.create(
    message: "Just keep swimming. Just keep swimming",
    animal_id: animal14.id,
    user_id: user5.id
)

Comment.create(
    message: "Ohh, fancy seeing an Australian here!",
    animal_id: animal1.id,
    user_id: user6.id
)

Comment.create(
    message: "The real 'Turning Red'.",
    animal_id: animal2.id,
    user_id: user7.id
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