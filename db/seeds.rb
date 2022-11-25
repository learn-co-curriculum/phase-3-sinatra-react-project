puts "🌱 Seeding spices..."

Restaurant.create(
    name: "Chipotle Mexican Grill", 
    address: "1600 California St Unit 7, Denver, CO 80202", 
    logo_url: "https://www.chipotle.com/content/dam/poc/order/images/logos/cmg-medallion-logo.svg"
    )

Restaurant.create(
    name: "Modern Market Eatery", 
    address: "900 16th St Mall, Denver, CO 80202",
    logo_url: "https://modernmarket.com/static/media/logo.493c6ed99fcbd4b8edb493211e512775.svg"
    )

Restaurant.create(
    name: "Noodles & Company", 
    address: "303 16th St Mall Suite 150, Denver, CO 80202",
    logo_url: "https://1000logos.net/wp-content/uploads/2022/10/Noodles-and-Company-logo.png"
    )



# Create multiple  MealPlan sizes for each restaurant
Restaurant.all.each do |restaurant|
    MealPlan.create(name: "Small", number_of_meals: rand(4..7), restaurant_id: restaurant.id)
    MealPlan.create(name: "Medium", number_of_meals: rand(8..11), restaurant_id: restaurant.id)
    MealPlan.create(name: "Large", number_of_meals: rand(12..16), restaurant_id: restaurant.id)
end

puts "✅ Done seeding!"
