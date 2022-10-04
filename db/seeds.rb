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
    address: business["location"]["display_address"].join(', '),
    price: business["price"],
    image_url: business["image_url"]
  )
end

20.times do
  User.create(
    username: Faker::Internet.username,
    profile_picture: "https://source.unsplash.com/800x800/?face?#{rand(1000).to_s}"
  )
end

300.times do
  Review.create(
    user_id: User.all.pluck(:id).sample,
    business_id: Business.all.pluck(:id).sample,
    star_rating: rand(1..5),
    comment: Faker::Restaurant.review
  )
end

puts "✅ Done seeding!"
