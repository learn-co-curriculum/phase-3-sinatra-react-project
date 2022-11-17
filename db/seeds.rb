puts "🌱 Seeding spices..."

Scent.destroy_all
User.destroy_all
Candle.destroy_all

# Floral scents
rose = Scent.create(name: "Rose", category: "Floral")
lavender = Scent.create(name: "Lavendar", category: "Floral")
jasmine = Scent.create(name: "Jasmine", category: "Floral")
lily = Scent.create(name: "Lily", category: "Floral")
orangeblossom = Scent.create(name: "Orangeblossom", category: "Floral")
lilac = Scent.create(name: "Lilac", category: "Floral")
violets = Scent.create(name: "Violets", category: "Floral")

# Citrus scents
orange = Scent.create(name: "Orange", category: "Citrus")
clementine = Scent.create(name: "Clemetine", category: "Citrus")
lemon = Scent.create(name: "Lemon", category: "Citrus")
grapefruit = Scent.create(name: "Grapefruit", category: "Citrus")
yuzu = Scent.create(name: "Yuzu", category: "Citrus")

#Fruit scents
apple = Scent.create(name: "Apple", category: "Fruit")
pear = Scent.create(name: "Pear", category: "Fruit")
peach = Scent.create(name: "Peach", category: "Fruit")
pineapple = Scent.create(name: "Pineapple", category: "Fruit")
banana = Scent.create(name: "Banana", category: "Fruit")
berries = Scent.create(name: "Berries", category: "Fruit")
pom = Scent.create(name: "Pomegranate", category: "Fruit")

# Aquatic 
cascalone = Scent.create(name: "Cascalone", category: "Sea")
seaweed = Scent.create(name: "Seaweed", category: "Sea")
seawater = Scent.create(name: "Seawater", category: "Sea")
cucumber = Scent.create(name: "Cucumber", category: "Sea")

# Spicy 
cinna = Scent.create(name: "Cinnamon", category: "Spice")
cloves = Scent.create(name: "Cloves", category: "Spice")
coffee = Scent.create(name: "Coffee", category: "Spice")
ginger = Scent.create(name: "Ginger", category: "Spice")
pepper = Scent.create(name: "Pepper", category: "Spice")
nutmeg = Scent.create(name: "Nutmeg", category: "Spice")
pinkpepper = Scent.create(name: "Pink Pepper", category: "Spice")
cardamom = Scent.create(name: "Cardamom", category: "Spice")

#Edible
cookies = Scent.create(name: "Cookies", category: "Edible")
bread = Scent.create(name: "Fresh Bread", category: "Edible")
muffin = Scent.create(name: "Muffin", category: "Edible")
toast = Scent.create(name: "Toast", category: "Edible")
greentea = Scent.create(name: "Green Tea", category: "Edible")
corn = Scent.create(name: "Roasted Corn", category: "Edible")
cream = Scent.create(name: "Cream", category: "Edible")
salt = Scent.create(name: "Salt", category: "Edible")
marshmellow = Scent.create(name: "marshmellow", category: "Edible")
chocolate = Scent.create(name: "chocolate", category: "Edible")

# Earthy 
musk = Scent.create(name: "Musk", category: "Earthy")
amber = Scent.create(name: "Amber", category: "Earthy")
hay = Scent.create(name: "Hay", category: "Earthy")
cedar = Scent.create(name: "Cedar", category: "Earthy")
bamboo = Scent.create(name: "Bamboo", category: "Earthy")
eucalyptus = Scent.create(name: "Eucalyptus", category: "Earthy")
sandalwood = Scent.create(name: "Sandalwood", category: "Earthy")
pine = Scent.create(name: "Pine", category: "Earthy")
grass = Scent.create(name: "Grass", category: "Earthy")

mad = User.create(user_name: "madeline", password: "mad123")
ang = User.create(user_name: "angela", password: "ang123")
kesh = User.create(user_name: "keshav", password: "kesh123")
har = User.create(user_name: "harrison", password: "har123")


autumn = Candle.create(name: "Fall Fun Fair", price: 12, image: "https://cb.scene7.com/is/image/Crate/ShinolaCandle3ThymeOlvBlueSSF21/$web_pdp_main_carousel_high$/210427132020/shinola-no.-3-bergamot-eucalyptus-and-amber-scented-candle.jpg")
sea = Candle.create(name: "Tide Wave", price: 12, image: "https://cb.scene7.com/is/image/Crate/ShinolaCandle3ThymeOlvBlueSSF21/$web_pdp_main_carousel_high$/210427132020/shinola-no.-3-bergamot-eucalyptus-and-amber-scented-candle.jpg")
driftwood = Candle.create(name: "Driftwood", price: 12, image: "https://cb.scene7.com/is/image/Crate/ShinolaCandle3ThymeOlvBlueSSF21/$web_pdp_main_carousel_high$/210427132020/shinola-no.-3-bergamot-eucalyptus-and-amber-scented-candle.jpg")
fire = Candle.create(name: "By the Fire", price: 12, image: "https://cb.scene7.com/is/image/Crate/ShinolaCandle3ThymeOlvBlueSSF21/$web_pdp_main_carousel_high$/210427132020/shinola-no.-3-bergamot-eucalyptus-and-amber-scented-candle.jpg")
morning = Candle.create(name: "Morning Routine", price: 12, image: "https://cb.scene7.com/is/image/Crate/ShinolaCandle3ThymeOlvBlueSSF21/$web_pdp_main_carousel_high$/210427132020/shinola-no.-3-bergamot-eucalyptus-and-amber-scented-candle.jpg")
library = Candle.create(name: "Afternoon Read", price: 12, image: "https://cb.scene7.com/is/image/Crate/ShinolaCandle3ThymeOlvBlueSSF21/$web_pdp_main_carousel_high$/210427132020/shinola-no.-3-bergamot-eucalyptus-and-amber-scented-candle.jpg")
fruitsalad = Candle.create(name: "Fruit Salad", price: 8, image: "https://cb.scene7.com/is/image/Crate/ShinolaCandle3ThymeOlvBlueSSF21/$web_pdp_main_carousel_high$/210427132020/shinola-no.-3-bergamot-eucalyptus-and-amber-scented-candle.jpg")
skilodge = Candle.create(name: "Après-Ski", price: 12, image: "https://cb.scene7.com/is/image/Crate/ShinolaCandle3ThymeOlvBlueSSF21/$web_pdp_main_carousel_high$/210427132020/shinola-no.-3-bergamot-eucalyptus-and-amber-scented-candle.jpg")
christmas = Candle.create(name: "Christmas Morning", price: 12, image: "https://cb.scene7.com/is/image/Crate/ShinolaCandle3ThymeOlvBlueSSF21/$web_pdp_main_carousel_high$/210427132020/shinola-no.-3-bergamot-eucalyptus-and-amber-scented-candle.jpg")
tea = Candle.create(name: "Citrus Tea", price: 12, image: "https://cb.scene7.com/is/image/Crate/ShinolaCandle3ThymeOlvBlueSSF21/$web_pdp_main_carousel_high$/210427132020/shinola-no.-3-bergamot-eucalyptus-and-amber-scented-candle.jpg")
charlie = Candle.create(name: "Scentsitive Lumberjack", price: 12, image: "https://cb.scene7.com/is/image/Crate/ShinolaCandle3ThymeOlvBlueSSF21/$web_pdp_main_carousel_high$/210427132020/shinola-no.-3-bergamot-eucalyptus-and-amber-scented-candle.jpg")


# Autumn Air
CandleScent.create(candle: autumn, scent: apple)
CandleScent.create(candle: autumn, scent: cinna)
CandleScent.create(candle: autumn, scent: muffin)
CandleScent.create(candle: autumn, scent: hay)
CandleScent.create(candle: autumn, scent: cedar)

# Sea 
CandleScent.create(candle: sea, scent: seawater)
CandleScent.create(candle: sea, scent: seaweed)
CandleScent.create(candle: sea, scent: musk)
CandleScent.create(candle: sea, scent: cucumber)
CandleScent.create(candle: sea, scent: greentea)

# Beach Driftwood 
CandleScent.create(candle: driftwood, scent: sandalwood)
CandleScent.create(candle: driftwood, scent: seawater)
CandleScent.create(candle: driftwood, scent: salt)
CandleScent.create(candle: driftwood, scent: yuzu)

#by the fire
CandleScent.create(candle: fire, scent: pine)
CandleScent.create(candle: fire, scent: marshmellow)
CandleScent.create(candle: fire, scent: orange)
CandleScent.create(candle: fire, scent: pepper)

# Morning Coffee 
CandleScent.create(candle: morning, scent: coffee)
CandleScent.create(candle: morning, scent: toast)
CandleScent.create(candle: morning, scent: apple)
CandleScent.create(candle: morning, scent: grass)

# Cozy Library 
CandleScent.create(candle: library, scent: musk)
CandleScent.create(candle: library, scent: sandalwood)
CandleScent.create(candle: library, scent: rose)
CandleScent.create(candle: library, scent: pinkpepper)

# Fruit salad
CandleScent.create(candle: fruitsalad, scent: apple)
CandleScent.create(candle: fruitsalad, scent: pear)
CandleScent.create(candle: fruitsalad, scent: pineapple)
CandleScent.create(candle: fruitsalad, scent: berries)

#skilodge
CandleScent.create(candle: skilodge, scent: chocolate)
CandleScent.create(candle: skilodge, scent: pine)
CandleScent.create(candle: skilodge, scent: marshmellow)
CandleScent.create(candle: skilodge, scent: cinna)
CandleScent.create(candle: skilodge, scent: nutmeg)

#christmas
CandleScent.create(candle: christmas, scent: pine)
CandleScent.create(candle: christmas, scent: cookies)
CandleScent.create(candle: christmas, scent: cream)
CandleScent.create(candle: christmas, scent: orange)
CandleScent.create(candle: christmas, scent: nutmeg)

#tea
CandleScent.create(candle: tea, scent: greentea)
CandleScent.create(candle: tea, scent: yuzu)
CandleScent.create(candle: tea, scent: grapefruit)
CandleScent.create(candle: tea, scent: cucumber)

#charlie
CandleScent.create(candle: charlie, scent: pine)
CandleScent.create(candle: charlie, scent: lavender)
CandleScent.create(candle: charlie, scent: ced)
CandleScent.create(candle: charlie, scent: cucumber)

UserCandle.create(user: mad, candle: autumn)
UserCandle.create(user: ang, candle: autumn)
UserCandle.create(user: kesh, candle: sea)
UserCandle.create(user: har, candle: sea)

puts "✅ Done seeding!"
