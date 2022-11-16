puts "🌱 Seeding spices..."

# Seed your database here

Customer.create(username: 'Bob', password: "123", email: "bob@gmail.com", phone_number: '123', customer_name:"Bob Schmuck", gender: "m" )
Customer.create(username: 'Shawn', password: "111", email: "Shawn@gmail.com", phone_number: '111', customer_name:"Shawn Mend", gender: "m" )
Customer.create(username: 'Pete', password: "122", email: "Pete@gmail.com", phone_number: '122', customer_name:"Pete David", gender: "m" )
Customer.create(username: 'Paris', password: "Queen", email: "Paris@gmail.com", phone_number: '100', customer_name:"Paris Purr", gender: "f" )

#AddressDetail
AddressDetail.create(customer_id: 1, label: "Home", address_name: "Bob Schmuck", address: "11 Broadway, 10003")
AddressDetail.create(customer_id: 2, label: "Home", address_name: "Shawn Mend", address: "650 Madison Ave, 10022")
AddressDetail.create(customer_id: 3, label: "Home", address_name: "Pete David", address: "222 Broadway, 10038")
AddressDetail.create(customer_id: 4, label: "Home", address_name: "Paris Purr", address: "524 Broadway, 10012")

#PaymentDetail
PaymentDetail.create(customer_id: 1, payment_name: "Bob Schmuck", cc_number: "1234123412341234", exp_code: "09/25" , cvc: "600" , billing_address: "11 Broadway, 10003" )
PaymentDetail.create(customer_id: 2, payment_name: "Shawn Mend", cc_number: "1234123412341235", exp_code: "08/25" , cvc: "601" , billing_address: "650 Madison Ave, 10022" )
PaymentDetail.create(customer_id: 3, payment_name: "Bob Schmuck", cc_number: "1234123412341236", exp_code: "07/25" , cvc: "345" , billing_address: "222 Broadway, 10038" )
PaymentDetail.create(customer_id: 4, payment_name: "Bob Schmuck", cc_number: "1234123412341237", exp_code: "06/25" , cvc: "232" , billing_address: "524 Broadway, 10012" )

#Product
Product.create(product_name: "Airy grey crewneck", price: 240, subcategory_id: 1)
Product.create(product_name: "Jones bow-detailed taffeta gown", price: 2220, subcategory_id: 2)
Product.create(product_name: "Dion stretch-duchesse satin gown", price: 4730, subcategory_id: 2)
Product.create(product_name: "Osa brushed wool-blend coat", price: 2600, subcategory_id: 3)
Product.create(product_name: "Open-back embellished ruched crepe gown", price: 2190, subcategory_id: 2)
Product.create(product_name: "Manuela belted camel hair coat", price:  6000, subcategory_id: 3)
Product.create(product_name: "Ralph Handmade Barathea Tuxedo Jacket", price:  12000, subcategory_id: 4)
Product.create(product_name: "RShearling-Trimmed Suede Blouson Jacket", price:  2900, subcategory_id: 3)
Product.create(product_name: "Cotton-Velvet Tuxedo Jacket", price:  1620, subcategory_id: 5)
Product.create(product_name: "The Morehouse Collection Striped Jacket", price: 2400, subcategory_id: 4)
Product.create(product_name: "Cropped Shearling Jacket", price: 7000, subcategory_id: 3)
Product.create(product_name: "Kent Brushed Wool Topcoat", price: 6000, subcategory_id: 3)
Product.create(product_name: "Gregory Wool Twill Peak Tuxedo", price: 5000, subcategory_id: 3)

#Category
Category.create(category_name: "Top")
Category.create(category_name: "one piece")

#Subcategory
Subcategory.create(category_id: 1, subcategory_name: "Sweater" )
Subcategory.create(category_id: 2, subcategory_name: "Dress" )
Subcategory.create(category_id: 2, subcategory_name: "Outerwear" )
Subcategory.create(category_id: 2, subcategory_name: "Matching Sets" )
Subcategory.create(category_id: 1, subcategory_name: "Jacket" )

#Image
Image.create(product_id: 1, image_1: "https://cache.mrporter.com/variants/images/45666037504351954/in/w560_q60.jpg",image_2: "https://cache.mrporter.com/variants/images/45666037504351954/ou/w2000_q60.jpg" , image_3: "https://cache.mrporter.com/variants/images/45666037504351954/bk/w560_q60.jpg", image_4: "https://cache.mrporter.com/variants/images/45666037504351954/cu/w560_q60.jpg" )
Image.create(product_id: 2, image_1: "https://www.net-a-porter.com/variants/images/1647597283299986/in/w920_q60.jpg",image_2: "https://www.net-a-porter.com/variants/images/1647597283299986/ou/w2000_q60.jpg" , image_3: "https://www.net-a-porter.com/variants/images/1647597283299986/bk/w920_q60.jpg", image_4: "https://www.net-a-porter.com/variants/images/1647597283299986/cu/w920_q60.jpg" )
Image.create(product_id: 3, image_1: "https://www.net-a-porter.com/variants/images/1890828705698106/in/w920_q60.jpg",image_2: "https://www.net-a-porter.com/variants/images/1890828705698106/ou/w2000_q60.jpg" , image_3: "https://www.net-a-porter.com/variants/images/1890828705698106/bk/w920_q60.jpg", image_4: "https://www.net-a-porter.com/variants/images/1890828705698106/cu/w920_q60.jpg" )
Image.create(product_id: 4, image_1: "https://www.net-a-porter.com/variants/images/1647597276874386/in/w920_q60.jpg",image_2: "https://www.net-a-porter.com/variants/images/1647597276874386/ou/w2000_q60.jpg" , image_3: "https://www.net-a-porter.com/variants/images/1647597276874386/bk/w920_q60.jpg", image_4: "https://www.net-a-porter.com/variants/images/1647597276874386/cu/w920_q60.jpg" )
Image.create(product_id: 5, image_1: "https://www.net-a-porter.com/variants/images/36856120585077208/in/w920_q60.jpg",image_2: "https://www.net-a-porter.com/variants/images/36856120585077208/ou/w2000_q60.jpg" , image_3: "https://www.net-a-porter.com/variants/images/36856120585077208/bk/w920_q60.jpg", image_4: "https://www.net-a-porter.com/variants/images/36856120585077208/cu/w920_q60.jpg" )
Image.create(product_id: 6, image_1: "https://www.net-a-porter.com/variants/images/13452677153309983/in/w920_q60.jpg",image_2: "https://www.net-a-porter.com/variants/images/13452677153309983/ou/w2000_q60.jpg" , image_3: "https://www.net-a-porter.com/variants/images/13452677153309983/bk/w920_q60.jpg", image_4: "https://www.net-a-porter.com/variants/images/13452677153309983/cu/w920_q60.jpg" )
Image.create(product_id: 7, image_1: "https://www.rlmedia.io/is/image/PoloGSI/s7-1448701_lifestyle?$rl_df_pdp_5_7_lif$",image_2: "https://www.rlmedia.io/is/image/PoloGSI/s7-1448701_alternate1?$rl_df_pdp_5_7$" , image_3: "https://www.rlmedia.io/is/image/PoloGSI/s7-1448701_alternate3?$rl_df_pdp_5_7$", image_4: "https://www.rlmedia.io/is/image/PoloGSI/s7-1448701_alternate5?$rl_df_pdp_5_7$" )
Image.create(product_id: 8, image_1: "https://cache.mrporter.com/variants/images/45666037504351956/in/w1200_q60.jpg",image_2: "https://cache.mrporter.com/variants/images/45666037504351956/ou/w1200_q60.jpg" , image_3: "https://cache.mrporter.com/variants/images/45666037504351956/bk/w1200_q60.jpg", image_4: "https://cache.mrporter.com/variants/images/45666037504351956/cu/w1200_q60.jpg" )
Image.create(product_id: 9, image_1: "https://cache.mrporter.com/variants/images/1647597285917236/in/w1200_q60.jpg",image_2: "https://cache.mrporter.com/variants/images/1647597285917236/ou/w2000_q60.jpg" , image_3: "https://cache.mrporter.com/variants/images/1647597285917236/bk/w1200_q60.jpg", image_4: "https://cache.mrporter.com/variants/images/1647597285917236/cu/w1200_q60.jpg" )
#https://www.mrporter.com/en-us/mens/product/favourbrook/clothing/tuxedo-jackets/cotton-velvet-tuxedo-jacket/1647597285917236
Image.create(product_id: 10, image_1: "https://www.rlmedia.io/is/image/PoloGSI/s7-1435967_lifestyle?$rl_df_pdp_5_7_lif$",image_2: "https://www.rlmedia.io/is/image/PoloGSI/s7-1435967_alternate1?$rl_df_pdp_5_7$" , image_3: "https://www.rlmedia.io/is/image/PoloGSI/s7-1435967_alternate3?$rl_df_pdp_5_7$", image_4: "https://www.rlmedia.io/is/image/PoloGSI/s7-1435967_alternate5?$rl_df_pdp_5_7$" )
Image.create(product_id: 11, image_1: "https://www.rlmedia.io/is/image/PoloGSI/s7-1455737_lifestyle?$rl_df_pdp_5_7_lif$",image_2: "https://www.rlmedia.io/is/image/PoloGSI/s7-1455737_alternate10?$rl_df_pdp_5_7_a10$" , image_3: "https://www.rlmedia.io/is/image/PoloGSI/s7-1455737_alternate3?$rl_df_pdp_5_7$", image_4: "https://www.rlmedia.io/is/image/PoloGSI/s7-1455737_alternate4?$rl_df_pdp_5_7$" )
Image.create(product_id: 12, image_1: "https://www.rlmedia.io/is/image/PoloGSI/s7-1419809_lifestyle?$rl_df_pdp_5_7_lif$",image_2: "https://www.rlmedia.io/is/image/PoloGSI/s7-1419809_alternate1?$rl_df_pdp_5_7$" , image_3: "https://www.rlmedia.io/is/image/PoloGSI/s7-1419809_alternate3?$rl_df_pdp_5_7$", image_4: "https://www.rlmedia.io/is/image/PoloGSI/s7-1419809_alternate4?$rl_df_pdp_5_7$" )
Image.create(product_id: 13, image_1: "https://www.rlmedia.io/is/image/PoloGSI/s7-1410794_lifestyle?$rl_df_pdp_5_7_lif$",image_2: "https://www.rlmedia.io/is/image/PoloGSI/s7-1410794_alternate10?$rl_df_pdp_5_7_a10$" , image_3: "https://www.rlmedia.io/is/image/PoloGSI/s7-1410794_alternate3?$rl_df_pdp_5_7$", image_4: "https://www.rlmedia.io/is/image/PoloGSI/s7-1410794_alternate4?$rl_df_pdp_5_7$" )

#Inventory
Inventory.create(product_id: 1, S_quantity: 1, M_quantity: 3, L_quantity: 2 )
Inventory.create(product_id: 2, S_quantity: 2, M_quantity: 4, L_quantity: 2 )
Inventory.create(product_id: 3, S_quantity: 0, M_quantity: 1, L_quantity: 2 )
Inventory.create(product_id: 4, S_quantity: 3, M_quantity: 1, L_quantity: 0 )
Inventory.create(product_id: 5, S_quantity: 4, M_quantity: 4, L_quantity: 2 )
Inventory.create(product_id: 6, S_quantity: 5, M_quantity: 3, L_quantity: 3 )
Inventory.create(product_id: 7, S_quantity: 6, M_quantity: 2, L_quantity: 4 )
Inventory.create(product_id: 8, S_quantity: 3, M_quantity: 2, L_quantity: 6 )
Inventory.create(product_id: 9, S_quantity: 2, M_quantity: 7, L_quantity: 9 )
Inventory.create(product_id: 10, S_quantity: 1, M_quantity: 5, L_quantity: 4 )
Inventory.create(product_id: 11, S_quantity: 3, M_quantity: 2, L_quantity: 3 )
Inventory.create(product_id: 12, S_quantity: 1, M_quantity: 1, L_quantity: 1 )
Inventory.create(product_id: 13, S_quantity: 1, M_quantity: 5, L_quantity: 4 )

# JOIN TABLES
CartItem.create(customer_id: 1, product_id: 1)
CartItem.create(customer_id: 4, product_id: 2)
CartItem.create(customer_id: 4, product_id: 4)
CartItem.create(customer_id: 2, product_id: 9)
CartItem.create(customer_id: 3, product_id: 10)
#OrderHistory
OrderHistory.create(customer_id: 1, product_id: 1, address_detail_id: 1, payment_detail_id: 1)
OrderHistory.create(customer_id: 4, product_id: 2, address_detail_id: 4, payment_detail_id: 4)
OrderHistory.create(customer_id: 4, product_id: 4, address_detail_id: 4, payment_detail_id: 4)
OrderHistory.create(customer_id: 1, product_id: 3, address_detail_id: 1, payment_detail_id: 1)
OrderHistory.create(customer_id: 2, product_id: 9, address_detail_id: 2, payment_detail_id: 2)
OrderHistory.create(customer_id: 3, product_id: 10, address_detail_id: 3, payment_detail_id: 3)


puts "✅ Done seeding!"
