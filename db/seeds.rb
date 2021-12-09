puts '🌱 Seeding...'

Category.destroy_all
Category.reset_pk_sequence
Post.destroy_all
Post.reset_pk_sequence
Comment.destroy_all
Comment.reset_pk_sequence

5.times { Category.create(name: Faker::Food.ethnic_category) }
puts 'Categories ✅'

def get_rand_category
  Category.all[rand(Category.all.count)].id
end

colors = %w[#ff7eb9 # #7afcff #feff9c #fff740 #A5E864]

25.times do
  Post.create(
    content: Faker::Quote.famous_last_words,
    image_url: Faker::Fillmurray.image,
    category_id: Category.all.sample.id,
    contributor_name: Faker::Name.unique.name,
    subject: Faker::Beer.name,
    color: colors.sample,
  )
end

puts 'Posts ✅'

100.times do
  Comment.create(
    name: Faker::Name.unique.name,
    avatar_url: "https://i.pravatar.cc/50/#{rand(100)}",
    message: Faker::Lorem.sentence(word_count: 10),
    post_id: Post.all.sample.id,
  )
end

puts 'Comments ✅'

puts '✅ Done seeding!'
