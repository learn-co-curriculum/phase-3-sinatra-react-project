require 'rest-client'
require 'faker' 

puts "🌱 Seeding spices..."

response = RestClient.get("https://api.yelp.com/v3/businesses/search?location=denver&limit=50", 
  headers={
    "Authorization": ENV['API_KEY']
  })


businesses = JSON.parse(response)

businesses.each do |business|
  Business.create(
    name: business["name"]
    business_type: business["categories"][0]["title"]
    address: business["location"]["display_address"]
  )
end

20.times do
  User.create(
    username: Faker::FunnyName.name
    profile_picture: "https://thispersondoesnotexist.com/image"
  )
end

300.times do
  Review.create(
    user_id: users.all.id.sample
    business_id: businesses.all.id.sample
    star_rating: rand(1..5)
  )


puts "✅ Done seeding!"
