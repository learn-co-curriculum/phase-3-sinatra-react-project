puts "🌱 Seeding spices..."

# Seed your database here

Customer.create(username: 'Bob', password: "123", email: "bob@gmail.com", phone_number: '123', customer_name:"Bob Schmuck", gender: "m" )

AddressDetail.create(customer_id: 1, label: "Home", address_name: "Bob Schmuck", address: "11 Broadway, 10003")

PaymentDetail.create(customer_id: 1, payment_name: "Bob Schmuck", cc_number: "1234123412341234", exp_code: "09/25" , cvc: "600" , billing_address: "11 Broadway, 10003" )

Product.create(product_name: "Gray Organic Sweater", price: 24.99, subcategory_id: 1)
Product.create(product_name: "Red Christmas Sweater", price: 19.99, subcategory_id: 1)
Product.create(product_name: "Green Christmas Sweater", price: 19.99, subcategory_id: 1)

Category.create(category_name: "Top")

Subcategory.create(category_id: 1, subcategory_name: "Sweater" )

Image.create(product_id: 1, image_1: "https://cache.mrporter.com/variants/images/45666037504351954/in/w560_q60.jpg",image_2: "https://cache.mrporter.com/variants/images/45666037504351954/ou/w2000_q60.jpg" , image_3: "https://cache.mrporter.com/variants/images/45666037504351954/bk/w560_q60.jpg", image_4: "https://cache.mrporter.com/variants/images/45666037504351954/cu/w560_q60.jpg" )

Inventory.create(product_id: 1, S_quantity: 1, M_quantity: 3, L_quantity: 2 )
Inventory.create(product_id: 2, S_quantity: 2, M_quantity: 1, L_quantity: 2 )

# JOIN TABLES
CartItem.create(customer_id: 1, product_id: 1)
CartItem.create(customer_id: 1, product_id: 2)

OrderHistory.create(customer_id: 1, product_id: 1, address_detail_id: 1, payment_detail_id: 1)
OrderHistory.create(customer_id: 1, product_id: 2, address_detail_id: 1, payment_detail_id: 1)
OrderHistory.create(customer_id: 1, product_id: 3, address_detail_id: 1, payment_detail_id: 1)


puts "✅ Done seeding!"
