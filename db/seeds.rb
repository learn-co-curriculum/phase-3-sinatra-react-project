puts "🌱 Seeding spices..."

Restaurant.create(
    name: "Chipotle Mexican Grill", 
    address: "1600 California St Unit 7, Denver, CO 80202", 
    tag: "Mexican",
    logo_url: "https://www.chipotle.com/content/dam/poc/order/images/logos/cmg-medallion-logo.svg",
    image_url: "https://failurebeforesuccess.com/wp-content/uploads/2022/09/chipotle_storefront_1200x72.jpg",
    bio: "Chipotle was born on the belief that there is a connection between how food is raised and prepared, and how it tastes. Real is better."
    )

Restaurant.create(
    name: "Modern Market Eatery", 
    address: "900 16th St Mall, Denver, CO 80202", 
    tag: "Healthy",
    logo_url: "https://logoimagesv2.id-visitors.com/b/6/a/2/8/8/b6a2885e163042d49f456556d892147d.png",
    image_url: "https://images.squarespace-cdn.com/content/v1/62b34ce523ac06552240d02a/1656520590691-3U3UEUQ5B7ZT1DAIPE4W/Modern+Market+Eatery+2.jpg?format=1500w",
    bio: "At ModMarket we make our food, in house, from scratch and we partner with local purveyors to bring you the freshest products."
    )

    Restaurant.create(
        name: "Cosmic Food Hall", 
        address: "891 14th St, Denver, CO 80202", 
        tag: "Healthy",
        logo_url: "https://static.vecteezy.com/system/resources/thumbnails/008/362/666/small/the-letter-c-logo-that-makes-up-the-cosmic-planet-vector.jpg",
        image_url: "https://www.tysonsgalleria.com/content/dam/b2c/mall-campaigns/urbanspace/tysons-galleria-urbanspace/TysonsGalleriaATasteOfUrbanSpaceHero-Compressed-3.jpg",
        bio: "At Cosmic Food Hall you'll have all the food options you'll ever need. We are farm-to-fork and healthy, offering bowls, sandwiches, and salads."
        )



# Create multiple MealPlan sizes for each restaurant
Restaurant.all.each do |restaurant|
    MealPlan.create(name: "Small", number_of_meals: 6, restaurant_id: restaurant.id, price: 72, subscribers: rand(25..100), subscription_status: false)
    MealPlan.create(name: "Medium", number_of_meals: 8, restaurant_id: restaurant.id, price: 88, subscribers: rand(25..100), subscription_status: false)
    MealPlan.create(name: "Large", number_of_meals: 12, restaurant_id: restaurant.id, price: 120, subscribers: rand(25..100), subscription_status: false)
end


# Populate restaurant requests
RestaurantRequest.create(name: "Birdcall", location: "Denver, CO", creator: "win")
RestaurantRequest.create(name: "Panera", location: "Denver, CO", creator: "win")
RestaurantRequest.create(name: "Five Guys", location: "Denver, CO", creator: "win")

# Random Upvotes
RestaurantRequest.all.each do |request|
    rand(1..20).times do
        RestaurantVote.create(vote: 1, restaurant_request_id: request.id)
    end
end



puts "✅ Done seeding!"
