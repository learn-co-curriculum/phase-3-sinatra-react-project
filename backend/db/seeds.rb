puts "🌱 Seeding spices..."

10.times do 
    Buyer.create(buyer_name: Faker::Name.name, password: Faker::FunnyName.name )
end
puts "🌱 Seeding pumpkins..."
10.times do 
    Seller.create(seller_name: Faker::Name.name, password: Faker::FunnyName.name)
end

puts "🌱 Seeding bananas..."
object_ids = [5, 1619, 702, 1767, 2760, 2543, 1691, 3407, 4656, 6992, 437133]

object_ids.each do |object_id| 
    response = RestClient.get "https://collectionapi.metmuseum.org/public/collection/v1/objects/#{object_id}"
    art_hash = JSON.parse(response)

    Piece.create(
        title: art_hash["title"] ,
        image: art_hash["primaryImage"], 
        date: Time.now, 
        artist: art_hash["artistDisplayName"],
        medium: art_hash["medium"],
        dimensions: art_hash["dimensions"],
        city: art_hash["city"],
        price:rand(100000...10000000),
        in_stock: true, 
        buyer_id:'', 
        seller_id: Seller.all.sample.id)

end

puts "🌱 Seeding apples..."
10.times do 
    Review.create(rating:rand(1..10), comment: Faker::Quote.yoda, piece_id: Piece.all.sample.id)
end


# Seed your database here

puts "✅ Done seeding!"
