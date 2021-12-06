puts '🌱 Seeding...'

Category.destroy_all
Post.destroy_all

5.times { Category.create(name: Faker::Food.ethnic_category) }
puts 'Categories ✅'

def get_rand_category
  Category.all[rand(Category.all.count)].id
end

25.times do
  Post.create(
    content: Faker::Lorem.sentence(word_count: 50),
    image_url: Faker::Fillmurray.image,
    category_id: get_rand_category,
    contributor_name: Faker::Name.unique.name,
    subject: Faker::Beer.name,
  )
end

puts 'Posts ✅'

puts '✅ Done seeding!'
