require 'rest-client' 

puts "🌱 Seeding spices..."

response = RestClient.get("https://api.yelp.com/v3/businesses/search?location=denver", 
  headers={
    "Authorization": ENV['API_KEY']
  })

puts "✅ Done seeding!"
