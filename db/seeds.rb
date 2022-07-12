puts 'Cleaning up...'
User.destroy_all
User.reset_pk_sequence
Restaurant.destroy_all
Restaurant.reset_pk_sequence
Review.destroy_all
Review.reset_pk_sequence
Friend.destroy_all
Friend.reset_pk_sequence

puts '🌱 Seeding database...'
puts 'creating users'
60.times do
  name = Faker::Name.unique.name
  User.create(name: name, email: Faker::Internet.email(name: name, separators: '_'))
end

puts 'making friends'
User.all.each do |user|
  rand(1..10).times do
    Friend.create(user_id: user.id, friend_id: User.where.not(id: user.id).ids.sample)
  end
end

puts 'listing restaurants'
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
