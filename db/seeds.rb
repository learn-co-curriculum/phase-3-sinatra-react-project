puts "🌱 Seeding spices..."

# Seed your database here
book = Book.create(title: "Galaxy", author: "Steve jobs", year: 2004, pages: 114)
review = Review.create(review: "Review on Galaxy", book_id: 2)

puts "✅ Done seeding!"
