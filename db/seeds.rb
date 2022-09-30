require 'rest-client' 

puts "🌱 Seeding spices..."

response = RestClient.get "https://api.yelp.com/v3/businesses/search"

puts "✅ Done seeding!"
