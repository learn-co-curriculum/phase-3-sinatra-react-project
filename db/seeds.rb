puts "🌱 Seeding..."


5.times do
  Category.create(name: Faker::Food.ethnic_category)
end
puts "Categories ✅"

def get_rand_category
  Category.all[rand(Category.all.count)]
end

25.times do
  Post.create(content: Faker::Alphanumeric.alphanumeric(number: 100), image_url: Faker::Fillmurray.image, category_id: get_rand_category)
end

puts "Posts ✅"

puts "✅ Done seeding!"


