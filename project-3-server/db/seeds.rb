puts "🌱 Seeding continents..."
# Continent.create(continent_name: "")

asia = Continent.create(continent_name: "Asia")
europe = Continent.create(continent_name: "Europe")
oceania = Continent.create(continent_name: "Oceania")
n_america = Continent.create(continent_name: "North America")
s_america = Continent.create(continent_name: "South America")
africa = Continent.create(continent_name: "Africa")
antarctica = Continent.create(continent_name: "Antarctica")



puts "🌱 Seeding destinations..."
# Destination.create(city_name: "", country_name: "", img_url: "", continent_id: )

bali = Destination.create(city_name: "Bali", country_name: "Indonesia", img_url: "https://i.insider.com/52f007e269bedd071d3e1f5e?width=1300&format=jpeg&auto=webp", continent_id: asia.id)
palma_de_mallorca = Destination.create(city_name: "Palma de Mallorca", country_name: "Spain", img_url: "https://i.insider.com/5d710afd2e22af0900576462?width=1300&format=jpeg&auto=webp", continent_id: europe.id)
new_york_city = Destination.create(city_name: "New York City", country_name: "United States", img_url: "https://i.insider.com/5c7575ff26289805767e0fcf?width=1300&format=jpeg&auto=webp", continent_id: n_america.id)
quito = Destination.create(city_name: "Quito", country_name: "Ecuador", img_url: "https://www.touropia.com/gfx/b/2016/06/Quito.jpg", continent_id: s_america.id)
luxor = Destination.create(city_name: "Luxor", country_name: "Egypt", img_url: "https://www.touropia.com/gfx/d/hot-air-balloon-rides/luxor.jpg", continent_id: africa.id)
phuket = Destination.create(city_name: "Phuket", country_name: "Thailand", img_url: "https://i.insider.com/54cbf6f16bb3f7f05902f897?width=1300&format=jpeg&auto=webp", continent_id: asia.id)
cancun = Destination.create(city_name: "Cancun", country_name: "Mexico", img_url: "https://govisity.com/wp-content/uploads/2018/09/Cancun-Mexico.jpg", continent_id: n_america.id)
mecca = Destination.create(city_name: "Mecca", country_name: "Saudi Arabia", img_url: "https://i.insider.com/589ed2e4dd0895bf548b4c9c?width=1300&format=jpeg&auto=webp", continent_id: asia.id)
tokyo = Destination.create(city_name: "Tokyo", country_name: "Japan", img_url: "https://i.insider.com/55f9e1b59dd7cc10008bae25?width=1300&format=jpeg&auto=webp", continent_id: asia.id)
kuala_lumpur = Destination.create(city_name: "Kuala Lumpur", country_name: "Malaysia", img_url: "https://i.insider.com/5a996011487ff99b038b465a?width=1300&format=jpeg&auto=webp", continent_id: asia.id)
dubai = Destination.create(city_name: "Dubai", country_name: "United Arab Emirates", img_url: "https://i.insider.com/5d71101e2e22af6a21150fa2?width=1300&format=jpeg&auto=webp", continent_id: asia.id)
paris = Destination.create(city_name: "Paris", country_name: "France", img_url: "https://i.insider.com/5d11e1f9e3ecba166936eca4?width=1300&format=jpeg&auto=webp", continent_id: europe.id)
miami = Destination.create(city_name: "Miami", country_name: "United States", img_url: "https://govisity.com/most-visited-cities-in-the-world/miami__florida__most_visited_cities_in_the_world/", continent_id: n_america.id)
los_angeles = Destination.create(city_name: "", country_name: "United States", img_url: "https://govisity.com/wp-content/uploads/2018/09/Los_Angeles_USA.jpg", continent_id: n_america.id)
buenos_aires = Destination.create(city_name: "Buenos Aires", country_name: "Argentina", img_url: "https://www.touropia.com/gfx/b/2016/03/buenos_aires.jpg", continent_id: s_america.id)
rio_de_janeiro = Destination.create(city_name: "Rio de Janeiro", country_name: "Brazil", img_url: "https://www.touropia.com/gfx/b/2016/03/rio_de_janeiro.jpg", continent_id: s_america.id)
bogota = Destination.create(city_name: "Bogotá", country_name: "Colombia", img_url: "https://www.travelandleisure.com/thmb/zBMtgiSoqQF0wiSCRxMkZmLYSdM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/bogota-colombia-07-CASACITIESWB21-7f6b2a1b56d6424c809009c17be09b0f.jpg", continent_id: s_america.id)
montevideo = Destination.create(city_name: "Montevideo", country_name: "Uruguay", img_url: "https://www.travelandleisure.com/thmb/jsb8HWBAABUgu_24s9qgNYSzh1A=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/montevideo-uruguay-09-CASACITIESWB21-a4ebb291d0e74254ab46e6a4054a1436.jpg", continent_id: s_america.id)
ait_benhaddou = Destination.create(city_name: "Ait Benhaddou", country_name: "Morocco", img_url: "https://www.touropia.com/gfx/d/amazing-mud-brick-buildings/ait_benhaddou.jpg", continent_id: africa.id)
lalibela = Destination.create(city_name: "Lalibela", country_name: "Ethiopia", img_url: "https://www.touropia.com/gfx/d/best-places-to-visit-in-africa/lalibela.jpg", continent_id: africa.id)
barcelona = Destination.create(city_name: "Barcelona", country_name: "Spain", img_url: "https://i.insider.com/5a73779bec1ade41d278d77f?width=1300&format=jpeg&auto=webp", continent_id: europe.id)
cape_town = Destination.create(city_name: "Cape Town", country_name: "South Africa", img_url: "https://www.planetware.com/wpimages/2021/04/africa-best-places-to-visit-cape-town-south-africa.jpg", continent_id: africa.id)
sydney = Destination.create(city_name: "Sydney", country_name: "Australia", img_url: "https://cdn1.tropicalsky.co.uk/images/800x600/view-of-sydney-from-taronga-zoo.jpg", continent_id: oceania.id)
wellington = Destination.create(city_name: "Wellington", country_name: "New Zealand", img_url: "https://www.tripsavvy.com/thmb/1LqGXaF9jSfPVIR_Mz5u87Uhq2E=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/TAM_1213-e8cd7478e18f4a2c8580d11fd8eed9e8.jpg", continent_id: oceania.id)
mcmurdo_station = Destination.create(city_name: "McMurdo Station", country_name: "United States", img_url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FMcMurdo_Station&psig=AOvVaw1OmPd6Q7PgigIgqMku2Cbl&ust=1668645646410000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCLDyj8q7sfsCFQAAAAAdAAAAABAD", continent_id: antarctica.id)



puts "🌱 Seeding users..."
# User.create(first_name: "", last_name: "")

arvin = User.create(first_name: "Arvin", last_name: "Orozco")
oakley = User.create(first_name: "Oakley", last_name: "Blake")
kameron = User.create(first_name: "Kameron", last_name: "Velez")
samia = User.create(first_name: "Samia", last_name: "Phillips")
rehan = User.create(first_name: "Rehan", last_name: "Weston")
rafael = User.create(first_name: "Rafael", last_name: "Walter")
janice = User.create(first_name: "Janice", last_name: "Gilliam")
gabrielle = User.create(first_name: "Gabrielle", last_name: "Barron")
reilly = User.create(first_name: "Reilly", last_name: "Pollard")
alessio = User.create(first_name: "Alessio", last_name: "Finley")



puts "🌱 Seeding reviews..."
# Review.create(message: "", stars: , user_id: , destination_id: )

Review.create(message: "The traveler sees what he sees, the tourist see what he has come to see.", stars: 5, user_id: arvin.id, destination_id: bali.id)
Review.create(message: "In traveling, a man must carry knowledge with him, if he would bring home knowledge.", stars: 7, user_id: arvin.id, destination_id: buenos_aires.id)
Review.create(message: "Amazing views! I enjoyed my time in Ecuador", stars: 8, user_id: arvin.id, destination_id: quito.id)
Review.create(message: "Walking ten thousand miles of the world is better than reading ten thousand scrolls", stars: 9, user_id: oakley.id, destination_id: phuket.id)
Review.create(message: "Travel like ghandi, with simple clothes, open eyes and an uncluttered mind.", stars: 4, user_id: oakley.id, destination_id: bali.id)
Review.create(message: "I see my path, but I don't know where it leads. Not knowing where i'm going is what inspires me to travel it.", stars: 6, user_id: oakley.id, destination_id: mecca.id)
Review.create(message: "Tourists don't know where they've been, travelers don't know where they're going.", stars: 6, user_id: kameron.id, destination_id: los_angeles.id)
Review.create(message: "Every year it takes less time to fly across the Atlantic and more time to drive to the office.", stars: 10, user_id: kameron.id, destination_id: palma_de_mallorca.id)
Review.create(message: "Awful traffic!", stars: 2, user_id: kameron.id, destination_id: new_york_city.id)
Review.create(message: "No man should travel until he has learned the language of the country he visits. Otherwise he voluntarily makes himself a great baby-so helpless and so ridiculous.", stars: 7, user_id: samia.id, destination_id: tokyo.id)
Review.create(message: "Experience, travel - these are education in themselves.", stars: 9, user_id: samia.id, destination_id: luxor.id)
Review.create(message: "Sometimes travelling doesn't make a person happier, but it still makes a person wiser.", stars: 3, user_id: samia.id, destination_id: bali.id)
Review.create(message: "When one realizes that his life is worthless he either commits suicide or travels.", stars: 9, user_id: rehan.id, destination_id: quito.id)
Review.create(message: "The world is a book and those who do not travel read only one page.", stars: 10, user_id: rehan.id, destination_id: dubai.id)
Review.create(message: "The whole object of travel is not to set foot on foreign land; it is at last to set foot on one's own country as a foreign land.", stars: 5, user_id: rehan.id, destination_id: luxor.id)
Review.create(message: " A man who leaves home to mend himself and others is a philosopher; but he who goes from country to country, guided by the blind impulse of curiosity, is a vagabond.", stars: 6, user_id: rafael.id, destination_id: kuala_lumpur.id)
Review.create(message: "I travel a lot; I hate having my life disrupted by routine.", stars: 8, user_id: rafael.id, destination_id: palma_de_mallorca.id)
Review.create(message: "The tourist who moves about to see and hear and open himself to all the influences of the places which condense centuries of human greatness is only a man in search of excellence.", stars: 9, user_id: rafael.id, destination_id: bogota.id)
Review.create(message: "I would like to spend my whole life traveling, if I could borrow another life to spend at home.", stars: 8, user_id: janice.id, destination_id: phuket.id)
Review.create(message: "The fool wanders, a wise man travels.", stars: 5, user_id: janice.id, destination_id: new_york_city.id)
Review.create(message: " Old men and far travelers may lie with authority.", stars: 9, user_id: janice.id, destination_id: miami.id)
Review.create(message: "A journey is like marriage. The certain way to be wrong is to think you control it.", stars: 10, user_id: gabrielle.id, destination_id: rio_de_janeiro.id)
Review.create(message: "Like all great travelers, I have seen more than I remember and remember more than I have seen.", stars: 8, user_id: gabrielle.id, destination_id: luxor.id)
Review.create(message: "The American arrives in Paris with a few French phrases he has culled from a conversational guide or picked up from a friend who owns a beret.", stars: 10, user_id: gabrielle.id, destination_id: paris.id)
Review.create(message: "Though we travel the world over to find the beautiful, we must carry it with us or we find it not.", stars: 8, user_id: reilly.id, destination_id: new_york_city.id)
Review.create(message: "Visits always give pleasure; if not the arrival, the departure.", stars: 3, user_id: reilly.id, destination_id: cancun.id)
Review.create(message: "To travel is to discover that everyone is wrong about other countries.", stars: 7, user_id: reilly.id, destination_id: quito.id)
Review.create(message: "Though there are some disagreeable things in NYC there is nothing so disagreeable as the visitors.", stars: 5, user_id: alessio.id, destination_id: new_york_city.id)
Review.create(message: "The use of traveling is to regulate imagination by reality, and instead of thinking how things may be, to see them as they are.", stars: 6, user_id: alessio.id, destination_id: montevideo.id)
Review.create(message: "Travel makes a wise man better, and a fool worse.", stars: 10, user_id: alessio.id, destination_id: ait_benhaddou.id)


puts "✅ Done seeding!"
