puts "🌱 Seeding spices..."


User.create(first_name: "Frank", last_name: "Savena" , username: "fsavena1" , email: "fs@gmail.com" )
User.create(first_name: "DJ" , last_name: "Richty"  , username: "Dj234" ,  email: "dj@gmail.com" )
User.create(first_name: "Gehrig", last_name: "Barnes" , username: "Gehrig" ,  email: "gb@gmail.com" )
User.create(first_name: "Kamran" , last_name: "Hussein" , username: "KH38432" ,  email: "kamran@gmail.com" )
User.create(first_name: "Addison", last_name: "Savena" , username: "Addie134" ,  email: "addison@gmail.com" )

Post.create(title: "Birthday", body: "Everyone with Addison a happy birthday!",user_id:rand(1..5) )
Post.create(title: "Holiday's", body: "Enjoy the break and have a nice holiday!",user_id:rand(1..5) )
Post.create(title: "Return to class ", body: "Welcome back to class ",user_id:rand(1..5) )
Post.create(title: "Phase 3 Project", body: "We are starting the phase 3 Ruby project this week ",user_id:rand(1..5) )
Post.create(title: "Attendence ", body: "Comment if you are here!",user_id:rand(1..5)  )

Comment.create(body: "Happy birthday Addison!", user_id:rand(1..5), post_id:rand(1..5) )
Comment.create(body: "Happy Holidays everyone!", user_id:rand(1..5), post_id:rand(1..5) )
Comment.create(body: "What is ruby?" , user_id:rand(1..5), post_id:rand(1..5) )
Comment.create(body: "Here!", user_id:rand(1..5), post_id:rand(1..5) )
Comment.create(body: "Hope everyone had a nice break!", user_id:rand(1..5), post_id:rand(1..5) )

puts "✅ Done seeding!"
