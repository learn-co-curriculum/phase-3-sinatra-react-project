puts "🌱 Seeding spices..."

cinnamon = Scent.create(name: "cinnamon")
cardamom = Scent.create(name: "cardamom")
tree = Scent.create(name: "forest")
scea = Scent.create(name: "sea")

mad = User.create(user_name: "madeline", password: "mad123")
ang = User.create(user_name: "angela", password: "ang123")
kesh = User.create(user_name: "keshav", password: "kesh123")
har = User.create(user_name: "harrison", password: "har123")



cin = Candle.create(name: "cinnamon breeze", price: 12, image: "https://cb.scene7.com/is/image/Crate/ShinolaCandle3ThymeOlvBlueSSF21/$web_pdp_main_carousel_high$/210427132020/shinola-no.-3-bergamot-eucalyptus-and-amber-scented-candle.jpg")
card = Candle.create(name: "cardamom breeze", price: 12, image: "https://cb.scene7.com/is/image/Crate/ShinolaCandle3ThymeOlvBlueSSF21/$web_pdp_main_carousel_high$/210427132020/shinola-no.-3-bergamot-eucalyptus-and-amber-scented-candle.jpg")
forest = Candle.create(name: "forest breeze", price: 12, image: "https://cb.scene7.com/is/image/Crate/ShinolaCandle3ThymeOlvBlueSSF21/$web_pdp_main_carousel_high$/210427132020/shinola-no.-3-bergamot-eucalyptus-and-amber-scented-candle.jpg")
sea = Candle.create(name: "sea breeze", price: 12, image: "https://cb.scene7.com/is/image/Crate/ShinolaCandle3ThymeOlvBlueSSF21/$web_pdp_main_carousel_high$/210427132020/shinola-no.-3-bergamot-eucalyptus-and-amber-scented-candle.jpg")



CandleScent.create(candle: cin, scent: cinnamon)
CandleScent.create(candle: card, scent: cardamom)
CandleScent.create(candle: forest, scent: tree)
CandleScent.create(candle: sea, scent: scea)


UserCandle.create(user: mad, candle: cin)
UserCandle.create(user: ang, candle: forest)
UserCandle.create(user: kesh, candle: card)
UserCandle.create(user: har, candle: sea)

puts "✅ Done seeding!"
