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
  rand(1..5).times do
    exclude_list = user.followers.ids
    exclude_list << user.id
    # puts 'excluding ', exclude_list.join(',').to_s
    available_friends = User.where.not(id: exclude_list)
    Friend.create(followee_id: user.id, follower_id: available_friends.ids.sample) if available_friends.count > 0
  end
end

puts 'listing restaurants'
restaurant_img = %w[https://tse4.mm.bing.net/th?id=OIP.8-mPg-2H_MJXqAzxgqrZFgHaE8
                    https://tse1.mm.bing.net/th?id=OIP.S_rk5Qh_73hs0cm1PYAEPgHaE8
                    https://www.stylemotivation.com/wp-content/uploads/2020/10/AdobeStock_249582332-scaled.jpeg
                    https://heyligersarchitects.nl/wp-content/uploads/2012/06/Interieur-cafe-restaurant-riva-Heyligers-01.jpg]
40.times do
  restaurant = Restaurant.create(name: Faker::Restaurant.unique.name,
                                 description: Faker::Restaurant.description, category: Faker::Restaurant.type,
                                 img: restaurant_img.sample)

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
