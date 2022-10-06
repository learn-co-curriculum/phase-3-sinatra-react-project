puts "Seeding Random Users"


10.times {
    response=RestClient.get "https://randomuser.me/api/"
    
    age=rand (18..50)
    user_hash=JSON.parse(response)["results"]

    desired_sex=["male","female", "all"].sample
    User.create(
        first_name: Faker::Name.unique.first_name, 
        last_name: Faker::Name.unique.last_name, 
        email: Faker::Internet.email, 
        username: Faker::Internet.username, 
        password: Faker::Internet.password, 
        age: age, bio: Faker::Quote.yoda, 
        profile_img: Faker::Avatar.image, 
        gender: "female", 
        desired_sex: desired_sex
    )

}

10.times {
    response=RestClient.get "https://randomuser.me/api/"
    gender=["male", "female"].sample
    age=rand (30..50)
    user_hash=JSON.parse(response)["results"]
    desired_sex=["male","female", "all"].sample
    User.create(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name, email: Faker::Internet.email, username: Faker::Internet.username, password: Faker::Internet.password, age: age, bio: Faker::Hacker.say_something_smart, profile_img: Faker::Avatar.image, 
    gender: gender, desired_sex: desired_sex)

}

10.times {
    response=RestClient.get "https://randomuser.me/api/"
    
    gender=["male", "female", "other"].sample
    age=rand (18..25)
    user_hash=JSON.parse(response)["results"]
    desired_sex=["male","female", "all"].sample
    User.create(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name, email: Faker::Internet.email, username: Faker::Internet.username, password: Faker::Internet.password, age: age, bio: Faker::Quote.jack_handey, profile_img: Faker::Avatar.image,
    gender: gender, desired_sex: desired_sex)
}

10.times{
    response=RestClient.get "https://randomuser.me/api/"
    
    age=rand (50..70)
    user_hash=JSON.parse(response)["results"]
    desired_sex=["male","female", "all"].sample
    User.create(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name, email: Faker::Internet.email, username: Faker::Internet.username, password: Faker::Internet.password, age: age, bio: Faker::Quote.most_interesting_man_in_the_world, profile_img: Faker::Avatar.image, 
    gender: "female", desired_sex: desired_sex)

}

10.times{
    response=RestClient.get "https://randomuser.me/api/"
    
    age=rand (25..35)
    user_hash=JSON.parse(response)["results"]
    desired_sex=["male","female", "all"].sample
    User.create(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name, email: Faker::Internet.email, username: Faker::Internet.username, password: Faker::Internet.password, age: age, bio: Faker::Quote.most_interesting_man_in_the_world, profile_img: Faker::Avatar.image, 
   gender: "male", desired_sex: desired_sex)

}



puts "✅ Done seeding!"

