puts "🌱 Seeding spices..."

puts "Deleting old data..."
MenuItem.destroy_all
Menu.destroy_all
Review.destroy_all
ReviewSection.destroy_all

puts "Creating menus..."
menu1 = Menu.create(name:"Lunch Menu")

puts "creating menu items..."
menu_items1 = MenuItem.create(name:"Flatiron Steak", price: 19, img: "https://media-cldnry.s-nbcnews.com/image/upload/t_fit-760w,f_auto,q_auto:best/newscms/2021_32/1761456/grilled-steak-te-main-210813.jpg", menu_id: menu1.id)
menu_items2 = MenuItem.create(name:"Bacon Cheeseburger", price: 12, img: "https://makeyourmeals.com/wp-content/uploads/2020/05/bacon-cheeseburger-featured-720x540.jpg", menu_id: menu1.id)
menu_items3 = MenuItem.create(name:"Alfredo Pasta", price: 11, img: "https://realhousemoms.com/wp-content/uploads/One-Pot-Alfredo-Pasta-RECIPE-CARD2.jpg", menu_id: menu1.id)
menu_items4 = MenuItem.create(name:"Buffalo Chicken Mac N' Cheese", price: 11, img: "https://iambaker.net/wp-content/uploads/2019/09/buffalo-mac-3.jpg", menu_id: menu1.id)
menu_items5 = MenuItem.create(name:"Spicy Rigatoni", price: 21, img: "https://scheckeats.com/wp-content/uploads/2021/05/DSC09648-scaled.jpg", menu_id: menu1.id)
menu_items6 = MenuItem.create(name:"Korean Corn Dogs", price: 8, img: "https://www.honestfoodtalks.com/wp-content/uploads/2021/02/variation-corn-dog.jpg", menu_id: menu1.id)
menu_items7 = MenuItem.create(name:"Loaded Nachos", price: 10, img: "https://hips.hearstapps.com/hmg-prod/images/nachos-supreme-horizontal-1547669254.png?crop=1.00xw%3A0.847xh%3B0%2C0.106xh&resize=480%3A270", menu_id: menu1.id)
menu_items8 = MenuItem.create(name:"Double Cheeseburger", price: 14, img: "https://images.immediate.co.uk/production/volatile/sites/30/2020/12/Big-double-cheeseburger-f437c9c.jpg", menu_id: menu1.id)
menu_items9 = MenuItem.create(name:"Beef Empanandas", price: 15, img: "https://keviniscooking.com/wp-content/uploads/2021/08/Been-Empanadas-14.jpg", menu_id: menu1.id)

puts "creating Review Sections..."
review_section1 = ReviewSection.create(name:"Lunch Menu Reviews")

puts "creating Reviews..."
review1 = Review.create(name: "Phil", content: "Best restaurant in town ran by the best group students ive ever had!", review_section_id: review_section1.id)


puts "✅ Done seeding!"
