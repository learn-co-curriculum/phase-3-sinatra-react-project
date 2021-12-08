puts '🌱 Seeding...'

Category.destroy_all
Category.reset_pk_sequence
Post.destroy_all
Post.reset_pk_sequence

5.times { Category.create(name: Faker::Food.ethnic_category) }
puts 'Categories ✅'

def get_rand_category
  Category.all[rand(Category.all.count)].id
end

25.times do
  Post.create(
    content: Faker::Lorem.sentence(word_count: 50),
    image_url: Faker::Fillmurray.image,
    category_id: Category.all.sample.id,
    contributor_name: Faker::Name.unique.name,
    subject: Faker::Beer.name,
  )
end

puts 'Posts ✅'

puts '✅ Done seeding!'
