Hero.destroy_all
User.destroy_all
Card.destroy_all
Deck.destroy_all
CardDeck.destroy_all


puts "Create User"

user1 = User.create(name: "Test User")

puts "Added Heros"

mage = Hero.create(name: "Mage")
druid = Hero.create(name: "Druid")
warrior = Hero.create(name: "warrior")

puts "Created Mage Cards"

Card.create(name: "Aegwynn, the Guardian", img: "https://d15f34w2p8l1cc.cloudfront.net/hearthstone/f161b55a8866ce595a34b65351065f1fd65f4d612da13b21ad4bb15db0513615.png", hero_id: mage.id)
Card.create(name: "Arcane Intellect", img: "https://d15f34w2p8l1cc.cloudfront.net/hearthstone/0609c0a9644a9a6888c5c39cef2da872cfdff6e3b15ef64c7b20138c7bc949bc.png", hero_id: mage.id)
Card.create(name: "Arcanologist", img: "https://d15f34w2p8l1cc.cloudfront.net/hearthstone/c9bb8001415b8f0af2fb6b636ef9255f2f5d9e3a7fa1c13e556bee0eaae8c6a3.png", hero_id: mage.id)
Card.create(name: "Babbling Book", img: "https://d15f34w2p8l1cc.cloudfront.net/hearthstone/90f4f87438bf79184db25c8396b3e6161dea04fc442061a06228498399345c13.png", hero_id: mage.id)
Card.create(name: "Coldarra Drake", img: "https://d15f34w2p8l1cc.cloudfront.net/hearthstone/843cba874149ae8b4ee08f967b93d486e35aeadb0d51fee4fb7d0afd7e931e4c.png", hero_id: mage.id)
Card.create(name: "Cone of Cold", img: "https://d15f34w2p8l1cc.cloudfront.net/hearthstone/40adb8435419d52e9c0717a2d0f02d5794c034e8ec7a1ed20a2f27e7f1db6280.png", hero_id: mage.id)
Card.create(name: "Counterspell", img: "https://d15f34w2p8l1cc.cloudfront.net/hearthstone/53b70157de8f64d3fb818cae8878e54ef54ea31eb2d31eaa2037683802681798.png", hero_id: mage.id)
Card.create(name: "Ethereal Conjurer", img: "https://d15f34w2p8l1cc.cloudfront.net/hearthstone/51faa2a06962dd2635b4d86f9bc697609342953eb5a58e03b03de19a54eb1307.png", hero_id: mage.id)
Card.create(name: "Fallen Hero", img: "https://d15f34w2p8l1cc.cloudfront.net/hearthstone/c489da1b2149d1a73f11b0fa26fad30f871e6247d733254eafc51723416206ef.png", hero_id: mage.id)
Card.create(name: "Fireball", img: "https://d15f34w2p8l1cc.cloudfront.net/hearthstone/a13f4b305cc9268f07d4a20ca5000b5a128f238e97a120601d99101ab7dba9bc.png", hero_id: mage.id)

puts "Created Druid Cards"

Card.create(name: "Ancient of War", img: "https://d15f34w2p8l1cc.cloudfront.net/hearthstone/0dac7d33f7230451bf53cd8eafd40a409d42595176a374e87c28eb65bce76696.png", hero_id: druid.id)
Card.create(name: "Cenarius", img: "https://d15f34w2p8l1cc.cloudfront.net/hearthstone/5884760b4391faee3e3eb84df19923bc72b819c2418107e471c4105000c81f5e.png", hero_id: druid.id)
Card.create(name: "Druid of the Claw", img: "https://d15f34w2p8l1cc.cloudfront.net/hearthstone/ac6cbd12df0783ef4b00a3444388f51bccf16de51b63413b0c045b0559451cf6.png", hero_id: druid.id)
Card.create(name: "Enchanted Raven", img: "https://d15f34w2p8l1cc.cloudfront.net/hearthstone/28e21a8852e122e17d716f683a72b5f6303d66a6247e9b96537feaf2a5b832a6.png", hero_id: druid.id)
Card.create(name: "Feral Rage", img: "https://d15f34w2p8l1cc.cloudfront.net/hearthstone/e90af8fa7c5009e699a7a53a134cee33e2d02751a8b345f24cc1989fc76cd90e.png", hero_id: druid.id)
Card.create(name: "Force of Nature", img: "https://d15f34w2p8l1cc.cloudfront.net/hearthstone/11e5107706a176f39933f77752a01d3041cae2b2913dde4745c8df7ea7cc2bf3.png", hero_id: druid.id)
Card.create(name: "Innervate", img: "https://d15f34w2p8l1cc.cloudfront.net/hearthstone/004778245852e493ceaa90b991bee4985b59fd44ff4e28fab3f97920b2599860.png", hero_id: druid.id)
Card.create(name: "Landscaping", img: "https://d15f34w2p8l1cc.cloudfront.net/hearthstone/386af5662c45cdfea0b754f5ff6150b3f07ced4526f7482259bcbfefbc0cda59.png", hero_id: druid.id)
Card.create(name: "Mark of the Wild", img: "https://d15f34w2p8l1cc.cloudfront.net/hearthstone/b6c1b7110929f9af45d376d2bd4f920e85237d5570eb1b614540a3c2e57e056c.png", hero_id: druid.id)
Card.create(name: "Menagerie Warden", img: "https://d15f34w2p8l1cc.cloudfront.net/hearthstone/9ccebaf56ef6dfb1c5ccbe4c5fe0f36f70f8e008b7a84c45db8ab31e957e4baa.png", hero_id: druid.id)

puts "Created warrior Cards"

card1 = Card.create(name: "Armorsmith", img: "https://d15f34w2p8l1cc.cloudfront.net/hearthstone/7a302406a4ba14f3dcf9e4a54731cb152bab3350988b8a250ead836d20334edd.png", hero_id: warrior.id)
card2 = Card.create(name: "Bloodsail Deckhand", img: "https://d15f34w2p8l1cc.cloudfront.net/hearthstone/018b77c70cc76a57582fc31b5b9a0dd867a4c370ec2c7862a57230e407a48f14.png", hero_id: warrior.id)
card3 = Card.create(name: "Brawl", img: "https://d15f34w2p8l1cc.cloudfront.net/hearthstone/06b78a7588703a4f5bee9ae376d99944eed87c400e8fcc01305d2d85bfdf0c24.png", hero_id: warrior.id)
card4 = Card.create(name: "Cruel Taskmaster", img: "https://d15f34w2p8l1cc.cloudfront.net/hearthstone/ee9ac05a6097f0c22d75ac58193b284aa8f96af665461589107a6c38241ea93a.png", hero_id: warrior.id)
card5 = Card.create(name: "Execute", img: "https://d15f34w2p8l1cc.cloudfront.net/hearthstone/5054d0630435282d0df88afbc2f080eda1ec0e6d4ed543218e54c5003067f823.png", hero_id: warrior.id)
card6 = Card.create(name: "Fiery War Axe", img: "https://d15f34w2p8l1cc.cloudfront.net/hearthstone/01eee4430d461aaa3844e0536ff660c306685d67ed735b75c4793b25af2de8df.png", hero_id: warrior.id)
card7 = Card.create(name: "Frothing Berserker", img: "https://d15f34w2p8l1cc.cloudfront.net/hearthstone/9c6efce7a80a02470d09aec549e937591eec1bd6d8de10a55e9481ae0f2643c0.png", hero_id: warrior.id)
card8 = Card.create(name: "Gorehowl", img: "https://d15f34w2p8l1cc.cloudfront.net/hearthstone/6e19191ca66044a4aebb845810437b7d3c358ae7184edfdb40a37abed9da9f3a.png", hero_id: warrior.id)
card9 = Card.create(name: "Grommash Hellscream", img: "https://d15f34w2p8l1cc.cloudfront.net/hearthstone/52f1842e0c8d96f923a18c606aac05337855cb4984ce8cf323a2c40fa089fcf9.png", hero_id: warrior.id)
card10 = Card.create(name: "Shield Slam", img: "https://d15f34w2p8l1cc.cloudfront.net/hearthstone/9a844daa62d404ef82c5caeacf3e36a099c946e5572626005199f139d5c2c051.png", hero_id: warrior.id)


puts "Create Dummy Decks"

deck1 = Deck.create(name: "Deck 1", user_id: user1.id)
deck2 = Deck.create(name: "Deck 2", user_id: user1.id)

puts "Create Dummy Card Deck Table"

CardDeck.create(deck_id: deck1.id, card_id: card1.id)
CardDeck.create(deck_id: deck1.id, card_id: card2.id)
CardDeck.create(deck_id: deck1.id, card_id: card3.id)
CardDeck.create(deck_id: deck1.id, card_id: card4.id)
CardDeck.create(deck_id: deck1.id, card_id: card5.id)

CardDeck.create(deck_id: deck2.id, card_id: card8.id)
CardDeck.create(deck_id: deck2.id, card_id: card1.id)
CardDeck.create(deck_id: deck2.id, card_id: card3.id)
CardDeck.create(deck_id: deck2.id, card_id: card7.id)
CardDeck.create(deck_id: deck2.id, card_id: card9.id)

puts "✅ Done seeding!"
