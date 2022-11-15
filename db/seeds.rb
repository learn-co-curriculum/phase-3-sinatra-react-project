puts "🌱 Seeding spices..."

cinnamon = Scent.create(name: "cinnamon")
cardamom = Scent.create(name: "cardamom")
tree = Scent.create(name: "forest")
scea = Scent.create(name: "sea")

mad = User.create(user_name: "madeline", password: "mad123")
ang = User.create(user_name: "angela", password: "ang123")
kesh = User.create(user_name: "keshav", password: "kesh123")
har = User.create(user_name: "harrison", password: "har123")


cin = Candle.create(name: "cinnamon breeze", price: 12, image: "candle.jpeg")
card = Candle.create(name: "cardamom breeze", price: 12, image: "candle.jpeg")
forest = Candle.create(name: "forest breeze", price: 12, image: "candle.jpeg")
sea = Candle.create(name: "sea breeze", price: 12, image: "candle.jpeg")


CandleScent.create(candle: cin, scent: cinnamon)
CandleScent.create(candle: card, scent: cardamom)
CandleScent.create(candle: forest, scent: tree)
CandleScent.create(candle: sea, scent: scea)


UserCandle.create(user: mad, candle: cin)
UserCandle.create(user: ang, candle: forest)
UserCandle.create(user: kesh, candle: card)
UserCandle.create(user: har, candle: sea)

puts "✅ Done seeding!"
