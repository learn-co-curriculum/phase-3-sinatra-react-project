Profile.destroy_all
User.destroy_all
Like.destroy_all

puts "🌱 Seeding database..."

puts "seeding user..."

u1 = User.create(name: "Jonathan", pronouns: "he/him/his", age: 1, description: "Ask me about my icebreakers", location: "New York, NY", image: "https://media-exp1.licdn.com/dms/image/C4E03AQFar5W8R6vTFw/profile-displayphoto-shrink_800_800/0/1602806523478?e=1652313600&v=beta&t=0nqDOqDwQ8ql6cOTYx6gLlQJwdGABiTCx2gQL_DB8wc")

puts "seeding profiles..."

p1 = Profile.create(name: "Abe", pronouns: "he/they/theirs", age: 156, description: "Live theatre blows my mind! Take me out to a show?", location: "Springfield", image: "https://upload.wikimedia.org/wikipedia/commons/a/ab/Abraham_Lincoln_O-77_matte_collodion_print.jpg", swipe_status: false)
p2 = Profile.create(name: "Anne", pronouns: "she/her/hers", age: 485, description: "So no head?", location: "London, England", image: "https://upload.wikimedia.org/wikipedia/commons/0/03/AnneBoleynHever.jpg", swipe_status: false)
p3 = Profile.create(name: "Ben", pronouns: "he/him/his", age: 233, description: "Inventor | Writer | Entrepreneur | West Philadelphia born and raised", location: "Philadelphia, PA", image: "https://upload.wikimedia.org/wikipedia/commons/8/87/Joseph_Siffrein_Duplessis_-_Benjamin_Franklin_-_Google_Art_Project.jpg", swipe_status: true)
p4 = Profile.create(name: "Elizabeth", pronouns: "she/her/hers", age: 407, description: "Beauty fanatic, love a good bath bomb.", location: "Budapest, Hungary", image: "https://upload.wikimedia.org/wikipedia/commons/7/73/Elizabeth_Bathory_Portrait.jpg", swipe_status: false)
p5 = Profile.create(name: "Lizzie", pronouns: "she/her/hers", age: 94, description: "Can I axe you a question? Jk lol, I don't do that anymore.", location: "Fall River, MA", image: "https://upload.wikimedia.org/wikipedia/commons/b/b5/Lizzie_borden.jpg", swipe_status: false)
p6 = Profile.create(name: "Walt", pronouns: "he/him/his", age: 55, description: "Theme park date?", location: "Orlando, FL", image: "https://upload.wikimedia.org/wikipedia/commons/d/df/Walt_Disney_1946.JPG", swipe_status: false)
p7 = Profile.create(name: "Julius", pronouns: "he/him/his", age: 2062, description: "It's about drive, it's about power, we stay hungry, we devour!", location: "Rome, Italy", image: "https://cdn-cdaac.nitrocdn.com/tFOqLIaMYIaFjSGNUoYXbEDiJHtqbEtH/assets/static/optimized/rev-7fdb227/wp-content/uploads/2014/12/830px-Ca%CC%88sar.jpg", swipe_status: false)
p8 = Profile.create(name: "Genghis", pronouns: "he/him/his", age: 794, description: "Travel enthusiast, horse guy", location: "Ulaanbaatar, Mongolia", image: "https://upload.wikimedia.org/wikipedia/commons/3/35/YuanEmperorAlbumGenghisPortrait.jpg", swipe_status: false)
p9 = Profile.create(name: "Public Universal Friend", pronouns: "they/them/theirs", age: 202, description: "Will steal your hoodie, not sorry.", location: "Cumberland, RI", image: "https://upload.wikimedia.org/wikipedia/commons/6/6a/Public_Universal_Friend_portrait.jpg", swipe_status: false)
p10 = Profile.create(name: "Socrates", pronouns: "?/?/?", age: 2416, description: "Gadfly of Athens, practicing atheist, ENTP", location: "Anthens, Greece", image: "https://miro.medium.com/max/1400/1*KA4UFJLWvbqJXnFk-CcDWg.jpeg", swipe_status: true)
p11 = Profile.create(name: "Vlad", pronouns: "he/him/his", age: 559, description: "Accept no substitutes", location: "Ambras Castle, Romania", image: "https://upload.wikimedia.org/wikipedia/commons/a/af/Vlad_Tepes_002.jpg", swipe_status: false)
p12 = Profile.create(name: "Audrey", pronouns: "she/her/hers", age: 28, description: "Breakfast date?", location: "Hollywood, CA", image: "https://upload.wikimedia.org/wikipedia/commons/5/5e/Audrey_Hepburn_1956.jpg", swipe_status: false)
p13 = Profile.create(name: "Katharine", pronouns: "she/her/hers", age: 18, description: "Shoot for the moon, you might just land a star.", location: "Hollywood, CA", image: "https://upload.wikimedia.org/wikipedia/commons/0/08/Katharine_Hepburn_promo_pic.jpg", swipe_status: false)
p14 = Profile.create(name: "Cixi", pronouns: "she/her/hers", age: 113, description: "gaslight, gatekeep, girlboss", location: "Beijing, China", image: "https://upload.wikimedia.org/wikipedia/commons/2/23/Hubert_Vos%27s_painting_of_the_Dowager_Empress_Cixi_%28Tzu_Hsi%29.jpg", swipe_status: false)
p15 = Profile.create(name: "Shikibu", pronouns: "she/they/theirs", age: 990, description: "Unapolagetic fanfic writer", location: "Kyoto, Japan", image: "https://upload.wikimedia.org/wikipedia/commons/1/14/Murasaki_Shikibu_Komatsuken.png", swipe_status: false)
p16 = Profile.create(name: "Mary", pronouns: "she/they/theirs", age: 170, description: "Looking for goth sadbois ONLY", location: "London, UK", image: "https://www.thoughtco.com/thmb/A7NAjNeVDu1bOOaKG_BBPEyD6NU=/3838x2608/filters:fill(auto,1)/GettyImages-599958329-1bf5a3d1c2204eddb9ced96f16723860.jpg", swipe_status: false)
p17 = Profile.create(name: "Musa", pronouns: "he/him/his", age: 684, description: "World taveler - gold/crypto investor", location: "Timbuktu, Mali", image: "https://magazine.northwestern.edu/assets/2019/Spring/6dd846b396/mansa-musa__FocusFillWzEyNDgsMTI0OCwieCIsMzYzXQ.jpg", swipe_status: false)
p18 = Profile.create(name: "Cleo", pronouns: "she/they/hers", age: 2010, description: "Getting over a few exes, looking for a new adventure!", location: "Alexandria, Egypt", image: "https://grapefruitmoongallery.com/wp-content/uploads/2012/09/Henry_Clive_Cleopatra.jpg", swipe_status: false)
p19 = Profile.create(name: "Jack", pronouns: "he/him/his", age: 133, description: "Cinema enthusiast. Fav films: Joker, American Psycho, Fight Club", location: "London, UK", image: "https://media.tacdn.com/media/attractions-splice-spp-674x446/06/74/8d/55.jpg", swipe_status: false)
p20 = Profile.create(name: "James", pronouns: "he/they/his", age: 66, description: "Rebel looking for a cause", location: "Hollywood, CA", image: "https://upload.wikimedia.org/wikipedia/commons/e/e6/James_Dean_in_Rebel_Without_a_Cause.jpg", swipe_status: false)
p21 = Profile.create(name: "Joe", pronouns: "he/him/his", age: 69, description: "DM me for my twitter account", location: "Moscow, USSR", image: "https://upload.wikimedia.org/wikipedia/commons/6/68/Young_stalin_screenshot.jpg", swipe_status: false)

puts "randomizing profile likes..."

profile_array = [p1.id, p2.id, p4.id, p5.id, p6.id, p7.id, p8.id, p9.id, p11.id, p12.id, 
p13.id, p14.id, p15.id, p16.id, p17.id, p18.id, p19.id, p20.id, p21.id].shuffle

puts "creating likes..."

l1 = Like.create(user_id: u1.id, profile_id: p10.id, user_like: true, profile_like: true)
l2 = Like.create(user_id: u1.id, profile_id: p3.id, user_like: true, profile_like: true)
l3 = Like.create(user_id: u1.id, profile_id: profile_array[0], user_like: nil, profile_like: false)
l4 = Like.create(user_id: u1.id, profile_id: profile_array[1], user_like: nil, profile_like: false)
l5 = Like.create(user_id: u1.id, profile_id: profile_array[2], user_like: nil, profile_like: true)
l6 = Like.create(user_id: u1.id, profile_id: profile_array[4], user_like: nil, profile_like: true)
l7 = Like.create(user_id: u1.id, profile_id: profile_array[5], user_like: nil, profile_like: true)
l8 = Like.create(user_id: u1.id, profile_id: profile_array[6], user_like: nil, profile_like: true)
l9 = Like.create(user_id: u1.id, profile_id: profile_array[7], user_like: nil, profile_like: true)
l10 = Like.create(user_id: u1.id, profile_id: profile_array[8], user_like: nil, profile_like: true)
l11 = Like.create(user_id: u1.id, profile_id: profile_array[9], user_like: nil, profile_like: true)
l12 = Like.create(user_id: u1.id, profile_id: profile_array[10], user_like: nil, profile_like: true)
l13 = Like.create(user_id: u1.id, profile_id: profile_array[11], user_like: nil, profile_like: true)
l14 = Like.create(user_id: u1.id, profile_id: profile_array[12], user_like: nil, profile_like: true)

puts "✅ Done seeding!"

