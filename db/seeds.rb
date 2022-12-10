puts "🌱 Seeding spices..."

# Seed your database here
book = Book.create(title: "ABC")
review = Review.create(review: "test review")

puts "✅ Done seeding!"
