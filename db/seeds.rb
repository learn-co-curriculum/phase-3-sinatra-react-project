#NOTE: Due to random nature of foreign_key generation, drop table then migrate if you want to seed again.
puts "🌱 Seeding spices..."

Customer.destroy_all
Product.destroy_all
Review.destroy_all
Order.destroy_all
OrderDetail.destroy_all

#create 20 customers
20.times do
    customer = Customer.create(
        full_name: Faker::Name.name,
        address: Faker::Address.street_name
    )
end

#create 50 products
50.times do
    product = Product.create(
        product_name: Faker::Commerce.product_name,
        price: Faker::Commerce.price(range: 50.0..1000.0),
        description: Faker::Commerce.department,
        img_url: Faker::LoremFlickr.image
    )

    #create between 1 to 5 reviews for each product
    rand(1..5).times do
        review = Review.create(
            rating: rand(1..5),
            comment: Faker::Quote.famous_last_words,
            product_id: product.id, #use created product id
            customer_id: rand(1..20) #only create random ids between 1 and 20 for number of customers
        )
    end
end

#create 100 orders
100.times do
    order = Order.create(
        amount: rand(1..10),
        customer_id: rand(1..20), #customer table has ids from 1 to 20
        shipping_address: Faker::Address.street_name,
        order_status: ["shipped", "delivered", "processing", "returned"].sample
    )
end

#create 20 order details
20.times do
    order_detail = OrderDetail.create(
        quantity: rand(1..10),
        order_id: rand(1..100), #order table has ids from 1 to 100
        product_id: rand(1..50) #product table has ids from 1 to 50
    ) 
end

puts "✅ Done seeding!"
