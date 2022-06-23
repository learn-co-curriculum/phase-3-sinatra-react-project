puts "🌱 Seeding spices..."

puts "Deleting cheese"
Cheese.destroy_all
Comment.destroy_all

puts "Creating cheese..."
gouda = Cheese.create(name: "Gouda", category: "semisoft", age: 8, location: "Wouldn't you like to know", image_url: "https://images.unsplash.com/photo-1633118920482-ca0fcd794cf6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=686&q=80", bio: "Snag a taste if you dare")
roquefort = Cheese.create(name: "Roquefort", category: "blue", age: 23, location: "Roquefort, France", image_url: "https://images.unsplash.com/photo-1516100970402-530cfdf696d8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80", bio: "Beauty is on the inside")
camembert = Cheese.create(name: "Camembert", category: "brie", age: 3, location: "Normandy, France", image_url: "https://images.unsplash.com/photo-1618439832239-24b550c7af56?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80", bio: "Young, and silky smooth")
cotija = Cheese.create(name: "Cotija", category: "hard", age: 14, location: "Mexico", image_url: "https://media.istockphoto.com/photos/organic-mexican-style-roasted-corn-with-cotija-cheese-picture-id993954434?s=612x612", bio: "Sit back and watch me crumble")
feta = Cheese.create(name: "Feta", category: "soft", age: 12, location: "Greece", image_url: "https://images.unsplash.com/photo-1559561853-08451507cbe7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1557&q=80", bio: "If it's not direct from Greece, I don't want it")
emmental = Cheese.create(name: "Emmental", category: "semisoft", age: 20, location: "Switzerland", image_url: "https://images.theconversation.com/files/316919/original/file-20200224-24701-1lk36vg.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=1200.0&fit=crop", bio: "Catch me in the alps")
cheddar = Cheese.create(name: "Cheddar", category: "hard", age: 60, location: "Somerset, England", image_url: "https://i0.wp.com/practicalselfreliance.com/wp-content/uploads/2020/10/Clothbound-Cheddar-51.jpg?fit=600%2C401&ssl=1", bio: "Bloody 'ell mate")
taleggio = Cheese.create(name: "Taleggio", category: "soft", age: 9, location: "Lombardia, Italy", image_url: "https://www.cheese.com/media/img/cheese/09-taleggio-shutterstock_251856148.jpg", bio: "Just wanna spend the weekend in Venice")
parm = Cheese.create(name: "Parmigiano-Reggiano", category: "hard", age: 150, location: "Lombardia, Italy", image_url: "https://www.tastebologna.net/uploads/2/1/6/4/21643804/parmigiano-reggiano-cheese_orig.jpg", bio: "Ever been with an older cheese before?")
manchego = Cheese.create(name: "Manchego", category: "firm", age: 69, location: "Spain", image_url: "https://www.solexcatsmo.com/pub/media/catalog/product/cache/d264b2f9be19f4330270789e2a8a3ee5/m/a/manchego-stock-1000.jpg", bio: "Not sure exactly what I'm looking for, but feel free to ask")

puts "Creating comments..."
Comment.create(cheese_id: gouda.id, comment_text: "absolutely delicious")
Comment.create(cheese_id: roquefort.id, comment_text: "I love mold")
Comment.create(cheese_id: camembert.id, comment_text: "perfect for a charcuterie board")
Comment.create(cheese_id: cotija.id, comment_text: "goes on every taco I ever eat")
Comment.create(cheese_id: feta.id, comment_text: "not a fan")
Comment.create(cheese_id: emmental.id, comment_text: "melt it down and throw it onto a roast beast sammy!")
Comment.create(cheese_id: cheddar.id, comment_text: "the swiss-army knife of cheeses")
Comment.create(cheese_id: taleggio.id, comment_text: "smells like feet, but quite the treat")
Comment.create(cheese_id: parm.id, comment_text: "A necessity for my chicken parm")
Comment.create(cheese_id: manchego.id, comment_text: "I am addicted to this chz")

puts "Creating ratings..."
15.times do
    cheese_id = Cheese.ids.sample
    rating_value = rand(1..5)
    Rating.create(rating: rating_value, cheese_id: cheese_id)
end

puts "✅ Done seeding!"
