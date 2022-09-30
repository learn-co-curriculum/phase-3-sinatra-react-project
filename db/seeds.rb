puts "🌱 Seeding spices..."

response = RestClient.get "https://api.yelp.com/v3/businesses/{id}"

puts "✅ Done seeding!"
