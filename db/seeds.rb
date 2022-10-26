require 'faker'

puts "🌱 Seeding data..."

# Make 10 users
10.times do
  User.create(
    first_name: Faker::Name.name,
    time_stamp: Faker::Date.between(from: '2022-01-01', to: '2022-10-25')
  )
end

# Make 50 restaurants
50.times do
  # create a restaurant with random data
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    food_type: Faker::Restaurant.type,
    summary: Faker::Restaurant.description[0..200],
    price_rating: rand(0..60), # random number between 10 and 100
    favorite: false
  )

  
  # create between 1 and 5 reviews for each review
  rand(1..5).times do
    # get a random user for every review
    # https://stackoverflow.com/a/25577054
    user = User.order('RANDOM()').first
  

    # A review belongs to a restaurant and a user, so we must provide those foreign keys
    Review.create(
      score: rand(1..10),
      comment: Faker::Restaurant.review,
      restaurant_id: restaurant.id,
      user_id: user.id
    )
  end
end
puts "🌱 Done seeding!"