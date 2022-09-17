puts "Deleting Venue/Band data..."
Product.destroy_all
Category.destroy_all


puts "Creating categories..."
Category.create(name: "Mens")
Category.create(name: "Womens")

puts "Creating product..."
Product.create(image: "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg", name: "Mens Casual Premium Slim Fit T-Shirts " , price: "22.3" , category_id: Category.first.id, is_cart: false)
Product.create(image:  "https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg", name:  "Mens Cotton Jacket" , price: "55.99" , category_id: Category.first.id, is_cart: false)
Product.create(image: "https://fakestoreapi.com/img/71YXzeOuslL._AC_UY879_.jpg", name: "Mens Casual Slim Fit" , price: "15.99" , category_id: Category.first.id, is_cart: false)
Product.create(image:  "https://fakestoreapi.com/img/51Y5NI-I5jL._AC_UX679_.jpg", name: "BIYLACLESEN Women's 3-in-1 Snowboard Jacket Winter Coats" , price: "56.99", category_id: Category.second.id, is_cart: false)
Product.create(image: "https://fakestoreapi.com/img/81XH0e8fefL._AC_UY879_.jpg", name:  "Lock and Love Women's Removable Hooded Faux Leather Moto Biker Jacket" , price: "29.95" , category_id: Category.second.id, is_cart: false)
Product.create(image: "https://fakestoreapi.com/img/51eg55uWmdL._AC_UX679_.jpg", name:  "Opna Women's Short Sleeve Moisture" , price: "7.95" , category_id: Category.second.id, is_cart: false)

