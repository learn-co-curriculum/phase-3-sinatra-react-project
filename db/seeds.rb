require 'rest-client'
require 'dotenv'
require 'faker' 
require 'pry' 

puts "🌱 Seeding DB ..."

url = "https://api.yelp.com/v3/businesses/search?location=denver&limit=50"

response = RestClient.get(url, headers={Authorization: ENV['API_KEY']})

businesses = JSON.parse(response)["businesses"]

businesses.each do |business|
  Business.create(
    name: business["name"], 
    business_type: business["categories"][0]["title"], 
    address: business["location"]["display_address"].join(', ')
  )
end

20.times do
  User.create(
    username: Faker::FunnyName.name, 
    profile_picture: "https://thispersondoesnotexist.com/image"
  )
end

300.times do
  Review.create(
    user_id: User.all.pluck(:id).sample, 
    business_id: Business.all.pluck(:id).sample, 
    star_rating: rand(1..5)
  )
end 

puts "✅ Done seeding!"
