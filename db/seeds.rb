#NOTE: Due to random nature of foreign_key generation, drop table then migrate if you want to seed again.
puts "🌱 Seeding spices..."

# Customer.destroy_all
# Product.destroy_all
# Review.destroy_all
# Order.destroy_all
# OrderDetail.destroy_all

#create 20 customers
20.times do
    customer = Customer.create(
        full_name: Faker::Name.name,
        address: Faker::Address.street_name
    )
end

p1 = Product.create(product_name: "Air Force 1", price: 2500, description: "Nike", img_url: "https://sneakernews.com/wp-content/uploads/2021/09/nike-air-force-1-7-lv8-white-green-DO5220-131-3.jpg")
p2 = Product.create(product_name: "Air Force 1 HT", price: 3200, description: "Nike", img_url: "https://images.solecollector.com/complex/images/c_crop,h_1097,w_1950,x_22,y_564/c_fill,dpr_2.0,f_auto,fl_lossy,q_auto,w_680/qoomm3aelhhzj75tggwv/air-jordan-1-high-womens-starfish-do9369-101-pair")
p3 = Product.create(product_name: "Air Max 270", price: 2200, description: "Nike", img_url: "https://houseofheat.co/app/uploads/2022/03/nike-air-max-270-black-red-dr8616-002-release-date.jpg")
p4 = Product.create(product_name: "Air Jordan 1", price: 3500, description: "Nike", img_url: "https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2022%2F08%2Fnike-air-force-1-mid-izakaya-dx2938-200-0.jpg?fit=max&cbr=1&q=90&w=750&h=500")
p5 = Product.create(product_name: "Air Jordan Retro 4", price: 4000, description: "Nike", img_url: "https://sneakernews.com/wp-content/uploads/2020/03/Air-Jordan-4-Neon-CT5342-007-6.jpg")
p6 = Product.create(product_name: "Air Zoom Pegasus", price: 2950, description: "Nike", img_url: "https://sneakernews.com/wp-content/uploads/2021/04/Nike-Air-Zoom-Pegasus-38-DJ3128-001-5.jpg")
p7 = Product.create(product_name: "Air Max 97", price: 1900, description: "Nike", img_url: "https://sneakernews.com/wp-content/uploads/2022/09/Nike-Air-Max-97-DX0137-700-5.jpg")
p8 = Product.create(product_name: "Air Max 90 GTX", price: 3250, description: "Nike", img_url: "https://sneakernews.com/wp-content/uploads/2022/09/nike-air-max-90-gore-tex-black-tour-yellow-cargo-khaki-iron-grey-dj9779-001-7.jpg")
p9 = Product.create(product_name: "Ultraboost 21", price: 2650, description: "Adidas", img_url: "https://preview.thenewsmarket.com/Previews/ADID/StillAssets/1920x1080/576929_v2.jpg")
p10 = Product.create(product_name: "MG Ultraboost", price: 2900, description: "Adidas", img_url: "https://images.solecollector.com/complex/images/c_crop,h_2957,w_5256,x_57,y_468/c_fill,dpr_2.0,f_auto,fl_lossy,q_auto,w_680/csxliis9k5lflquyjivn/adidas-ultraboost-dna-mark-gonzales")
p11 = Product.create(product_name: "OZELIA", price: 3200, description: "Adidas", img_url: "https://www.soleracks.com/wp-content/uploads/2022/06/adidas-Ozelia-Review.jpg")
p12 = Product.create(product_name: "NMD V3", price: 1450, description: "Adidas", img_url: "https://images.solecollector.com/complex/images/c_fill,dpr_2.0,f_auto,fl_lossy,q_auto,w_680/lqjvnuyelk0htvmbmt4s/adidas-nmd-v3-og-gx5784")
p13 = Product.create(product_name: "NMD HU", price: 1500, description: "Adidas", img_url: "https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2022%2F11%2Fpharrell-adidas-nmd-hu-animal-print-olive-hq9148-release-date-1.jpg?q=75&w=800&cbr=1&fit=max")
p14 = Product.create(product_name: "Broken Rules White", price: 3250, description: "Adidas", img_url: "https://images.yaoota.com/4wOfbxQj5W9vcmwnDqjEaCoHOfs=/trim/fit-in/500x500/filters:quality(80)/yaootaweb-production-ke/media/crawledproductimages/ed815e8b6cab323d95aa347409284ca2558a5c6e.jpg")
p15 = Product.create(product_name: "Broken Rules Black", price: 3300, description: "Adidas", img_url: "https://images-na.ssl-images-amazon.com/images/I/41cITpFGJvL.jpg")
p16 = Product.create(product_name: "Yeezy Kickscrew", price: 4500, description: "Adidas", img_url: "https://cdn.shopify.com/s/files/1/0603/3031/1875/products/main-square_0366bfde-0fca-435a-aa91-b80b2414075a_759x.jpg?v=1668075105")

50.times do
    rand(1..3).times do
        review = Review.create(
            rating: rand(1..5),
            comment: Faker::Quote.famous_last_words,
            product_id: rand(1..16), #use created product id
            customer_id: rand(1..20) #only create random ids between 1 and 20 for number of customers
        )
    end    
end
#create 50 products
# 50.times do
#     product = Product.create(
#         product_name: Faker::Commerce.product_name,
#         price: Faker::Commerce.price(range: 50.0..1000.0),
#         description: Faker::Commerce.department,
#         img_url: ["https://img.joomcdn.net/a8d43fd9914842311432f9503edadf18c6a73216_original.jpeg",
#         "https://cdn.shopify.com/s/files/1/0928/3306/products/geometric-mens-sneakers_533x.jpg?v=1627927774",
#         "https://images.yaoota.com/Mj3qUEOBDl7GOpun_VUq5-pSMVU=/trim/yaootaweb-production-ke/media/crawledproductimages/8e1e2e31e3a57098b792fdc007d93229e94dd6ea.jpg",
#         "https://static01.nyt.com/images/2021/05/27/fashion/24SNEAKERCOLORS-sacai-SUB/24SNEAKERCOLORS-sacai-SUB-mediumSquareAt3X.jpg",
#         "https://i.insider.com/55a966f3371d22c6178b62ed?width=700",
#         "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_450,h_450/global/384958/10/sv01/fnd/IND/fmt/png",
#         "https://designmuseum.blob.core.windows.net/cache/606_980-9908FF08-0FE9-407B-B79F-B8FEA4D6CD12",
#         "https://static-01.daraz.com.bd/p/654f56d6add12966a59ac8160db632af.jpg",
#         "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1634149140-the-rs01-sneaker-1634149134.png",
#         "https://sothebys-com.brightspotcdn.com/91/5b/726a96c5436f8343f6e706925ebe/032621-mfm-sneaker-029.jpg"
#         ].sample
#     )

#     #create between 1 to 5 reviews for each product
#     rand(1..5).times do
#         review = Review.create(
#             rating: rand(1..5),
#             comment: Faker::Quote.famous_last_words,
#             product_id: product.id, #use created product id
#             customer_id: rand(1..20) #only create random ids between 1 and 20 for number of customers
#         )
#     end
# end

# create 100 orders
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
        product_id: rand(1..16) #product table has ids from 1 to 16
    ) 
end

puts "✅ Done seeding!"
