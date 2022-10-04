puts "Seeding Random Users"




10.times {
    response=RestClient.get "https://randomuser.me/api/"
    age=rand (18..70)
    user_hash=JSON.parse(response)["results"]
    desired_sex=["Men","Women", "All"].sample
    User.create(first_name: user_hash[0]["name"]["first"], last_name: user_hash[0]["name"]["last"], email: user_hash[0]["email"], age: age, bio: "hello! I am looking for love!", profile_img: user_hash[0]["picture"]["medium"], 
            gender: user_hash[0]["gender"], desired_sex: desired_sex)
}

# Seed your database here

puts "✅ Done seeding!"

