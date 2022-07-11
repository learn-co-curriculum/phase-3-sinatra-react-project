puts 'Cleaning up...'
User.destroy_all
Restaurant.destroy_all
Review.destroy_all

puts '🌱 Seeding database...'
60.times do
  name = Faker::Name.name
  User.create(name: name, email: Faker::Internet.email(name: name, separators: '_'))
end
# Seed your database here
40.times do
  restaurant = Restaurant.create(name: Faker::Restaurant.unique.name,
                                 description: Faker::Restaurant.description, category: Faker::Restaurant.type)

  # create between 1 and 5 reviews for each restaurant
  rand(1..5).times do
    Review.create(
      score: rand(1..5),
      comment: Faker::Restaurant.review,
      restaurant_id: restaurant.id,
      user_id: User.ids.sample
    )
  end
end
puts '✅ Done seeding!'
