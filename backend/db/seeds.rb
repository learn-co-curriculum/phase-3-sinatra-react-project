puts "🌱 Seeding spices..."

10.times do 
    Buyer.create(buyer_name: Faker::Name.name, password: Faker::FunnyName.name )
end

10.times do 
    Seller.create(seller_name: Faker::Name.name, password: Faker::FunnyName.name)
end

10.times do 
    Review.create(rating:rand(1..10), comment:Faker::Quote.yoda, piece_id: Piece.all.sample.id)
end


piece1 = Piece.create(name: ,image: , date: , price: , desc: , buyer_id: Buyer.all.sample.id, seller_id: Seller.all.sample.id)
piece2 = Piece.create(name: ,image: , date: , price: , desc: , buyer_id: Buyer.all.sample.id, seller_id: Seller.all.sample.id)
piece3 = Piece.create(name: ,image: , date: , price: , desc: , buyer_id: Buyer.all.sample.id, seller_id: Seller.all.sample.id)
piece4 = Piece.create(name: ,image: , date: , price: , desc: , buyer_id: Buyer.all.sample.id, seller_id: Seller.all.sample.id)
piece5 = Piece.create(name: ,image: , date: , price: , desc: , buyer_id: Buyer.all.sample.id, seller_id: Seller.all.sample.id)
piece6 = Piece.create(name: ,image: , date: , price: , desc: , buyer_id: Buyer.all.sample.id, seller_id: Seller.all.sample.id)
piece7 = Piece.create(name: ,image: , date: , price: , desc: , buyer_id: Buyer.all.sample.id, seller_id: Seller.all.sample.id)
piece8 = Piece.create(name: ,image: , date: , price: , desc: , buyer_id: Buyer.all.sample.id, seller_id: Seller.all.sample.id)
piece9 = Piece.create(name: ,image: , date: , price: , desc: , buyer_id: Buyer.all.sample.id, seller_id: Seller.all.sample.id)
piece10 = Piece.create(name: ,image: , date: , price: , desc: , buyer_id: Buyer.all.sample.id, seller_id: Seller.all.sample.id)
# Seed your database here

puts "✅ Done seeding!"
