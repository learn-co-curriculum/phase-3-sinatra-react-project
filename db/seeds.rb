puts "🌱 Seeding spices..."

Scent.destroy_all
User.destroy_all
Candle.destroy_all

# Floral scents
floral1 = Scent.create(name: "Rose")
floral2 = Scent.create(name: "Lavendar")
floral3 = Scent.create(name: "Jasmine")
floral4 = Scent.create(name: "Lily")
floral5 = Scent.create(name: "Orangeblossom")
floral6 = Scent.create(name: "Lilac")
floral7 = Scent.create(name: "Violets")

# Citrus scents
citrus1 = Scent.create(name: "Orange")
citrus2 = Scent.create(name: "Clemetine")
citrus3 = Scent.create(name: "Lemon")
citrus4 = Scent.create(name: "Grapefruit")
citrus5 = Scent.create(name: "Yuzu")

#Fruit scents
fruit1 = Scent.create(name: "Apple")
fruit2 = Scent.create(name: "Pear")
fruit3 = Scent.create(name: "Peach")
fruit4 = Scent.create(name: "Pineapple")
fruit5 = Scent.create(name: "Banana")
fruit6 = Scent.create(name: "Berries")
fruit7 = Scent.create(name: "Pomegranate")

# Aquatic 
aqua1 = Scent.create(name: "Cascalone")
aqua2 = Scent.create(name: "Seaweed")
aqua3 = Scent.create(name: "Seawater")
aqua4 = Scent.create(name: "Cucumber")

# Spicy 
spicy1 = Scent.create(name: "Cinnamon")
spicy2 = Scent.create(name: "Cloves")
spicy3 = Scent.create(name: "Coffee")
spicy4 = Scent.create(name: "Ginger")
spicy5 = Scent.create(name: "Pepper")
spicy6 = Scent.create(name: "Nutmeg")
spicy7 = Scent.create(name: "Pink Pepper")
spicy8 = Scent.create(name: "Cardamom")

#Edible
edible1 = Scent.create(name: "Cookies")
edible2 = Scent.create(name: "Fresh Bread")
edible3 = Scent.create(name: "Muffin")
edible4 = Scent.create(name: "Toast")
edible5 = Scent.create(name: "Green Tea")
edible6 = Scent.create(name: "Roasted Corn")

# Earthy 
earthy1 = Scent.create(name: "Musk")
earthy2 = Scent.create(name: "Amber")
earthy3 = Scent.create(name: "Hay")
earthy4 = Scent.create(name: "Cedar")
earthy5 = Scent.create(name: "Bamboo")
earthy6 = Scent.create(name: "Eucalyptus")
earthy7 = Scent.create(name: "Sandalwood")
earthy8 = Scent.create(name: "Pine")


mad = User.create(user_name: "madeline", password: "mad123")
ang = User.create(user_name: "angela", password: "ang123")
kesh = User.create(user_name: "keshav", password: "kesh123")
har = User.create(user_name: "harrison", password: "har123")



autumn = Candle.create(name: "Autumn Air", price: 12, image: "https://cb.scene7.com/is/image/Crate/ShinolaCandle3ThymeOlvBlueSSF21/$web_pdp_main_carousel_high$/210427132020/shinola-no.-3-bergamot-eucalyptus-and-amber-scented-candle.jpg")
forest = Candle.create(name: "forest breeze", price: 12, image: "https://cb.scene7.com/is/image/Crate/ShinolaCandle3ThymeOlvBlueSSF21/$web_pdp_main_carousel_high$/210427132020/shinola-no.-3-bergamot-eucalyptus-and-amber-scented-candle.jpg")
sea = Candle.create(name: "Sunday Sea", price: 12, image: "https://cb.scene7.com/is/image/Crate/ShinolaCandle3ThymeOlvBlueSSF21/$web_pdp_main_carousel_high$/210427132020/shinola-no.-3-bergamot-eucalyptus-and-amber-scented-candle.jpg")

# Autumn Air
CandleScent.create(candle: autumn, scent: fruit1)
CandleScent.create(candle: autumn, scent: spicy1)
CandleScent.create(candle: autumn, scent: spicy2)
CandleScent.create(candle: autumn, scent: earthy3)
CandleScent.create(candle: autumn, scent: fruit2)

# Sea 
CandleScent.create(candle: sea, scent: aqua2)
CandleScent.create(candle: sea, scent: aqua3)
CandleScent.create(candle: sea, scent: aqua4)
CandleScent.create(candle: sea, scent: earthy7)
CandleScent.create(candle: sea, scent: edible5)


UserCandle.create(user: mad, candle: autumn)
UserCandle.create(user: ang, candle: autumn)
UserCandle.create(user: kesh, candle: sea)
UserCandle.create(user: har, candle: sea)

puts "✅ Done seeding!"
