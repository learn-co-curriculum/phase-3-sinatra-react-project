puts "🌱 Seeding spices..."
require 'pry'
Food.destroy_all
Review.destroy_all

m1=Food.create(name: "Shrimp Chop Suey", img_url: "https://www.bitesofberi.com/wp-content/uploads/2022/03/shrimp-chop-suey-3-768x1024.jpg", spice: "mild")
m2=Food.create(name: "Chicken Satay", img_url: "https://www.closetcooking.com/wp-content/uploads/2010/03/Chicken-Satay-1200-4611.jpg", spice: "medium")
m3=Food.create(name: "Crab Rangoon", img_url: "https://www.thecookierookie.com/wp-content/uploads/2021/11/crab-rangoon-recipe-3.jpg", spice: "mild")
m4=Food.create(name: "Hot and Sour Soup", img_url: "https://www.recipetineats.com/wp-content/uploads/2019/02/Hot-and-Sour-Soup_1_6.jpg", spice: "medium")
m5=Food.create(name: "Eggplant with Garlic Sauce", img_url: "https://static.toiimg.com/photo/75454071.cms", spice: "mild")
m6=Food.create(name: "Chicken Burrito", img_url: "https://healthynibblesandbits.com/wp-content/uploads/2016/02/Sushi-Burrito-FF.jpg", spice: "mild")
m7=Food.create(name: "Short Rib Taco", img_url: "https://www.discoverlosangeles.com/sites/default/files/images/2019-03/Kogi%20Taqueria%20Short%20Rib%20Taco%20Jakob%20Layman.JPG?width=1600&height=1200&fit=crop&quality=78&auto=webp", spice: "spicy")
m8=Food.create(name: "Fried Chicken Gua Bao", img_url: "https://www.njlux.com/media/Top-5-Asian-Fusion-Restaurants-in-Bergen-County.jpeg", spice: "mild")
m9=Food.create(name: "Japanese Omelette Over Rice", img_url: "https://qph.cf2.quoracdn.net/main-qimg-655eca697f1c1a590cf401bf15e53adb.webp", spice: "mild")
m10=Food.create(name: "Braised Beef Banh Mi", img_url: "https://i.cbc.ca/1.5266309.1567194178!/fileImage/httpImage/image.jpg_gen/derivatives/16x9_940/bahn-mi.jpg", spice: "mild")
m11=Food.create(name: "Singaporean Chili Crab Recipe", img_url: "https://www.seriouseats.com/thmb/qSGnrRY6RTXCmTaLfdxHDZP6lF4=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__recipes__images__2013__02__20130224-242112-singapore-chili-crab-edit-e02be72e16974f5da6fef41ec4ca7ea4.jpg", spice: "spicy")
m12=Food.create(name: "Vegan Asian Sesame Noodles", img_url: "https://christieathome.com/wp-content/uploads/2021/01/Vegan-Asian-Sesame-Noodles-2-b-scaled.jpg", spice: "mild")




r1=Review.create(name: "Jeremy Renner", description: "not bad if im being honest", rating: 10, menu_item_id: m1.id)
r2=Review.create(name: "William German", description: "Could use more msg", rating: 5, menu_item_id: m2.id)
r3=Review.create(name: "Keith Ma", description: "it is so creamy!", rating: 9, menu_item_id: m3.id)
r4=Review.create(name: "Jason Tran", description: "not spicy enough", rating: 6, menu_item_id: m4.id)
r5=Review.create(name: "Morgan VanYperan", description: "garlic could be a bit more fresh", rating: 4, menu_item_id: m5.id)
r6=Review.create(name: "Ian", description: "the burrito taste like crack", rating: 9, menu_item_id: m6.id)
r7=Review.create(name: "John Josef", description: "tacos tasted like home", rating: 10, menu_item_id: m7.id)
r8=Review.create(name: "Harinder Signh", description: "the bread was juicy and fresh", rating: 6, menu_item_id: m8.id)
r9=Review.create(name: "Robert Lee", description: "egg still raw and undercooked", rating: 2, menu_item_id: m9.id)
r10=Review.create(name: "Olivia Rodrigo", description: "banh mi was homemade and fresh", rating: 10, menu_item_id: m10.id)
r11=Review.create(name: "Adrian Baba", description: "not bad if im being honest", rating: 10, menu_item_id: m11.id)
r12=Review.create(name: "Kang Dynasty", description: "very good for a vegan dish", rating: 7, menu_item_id: m12.id)


binding.pry
# Seed your database here

puts "✅ Done seeding!"
