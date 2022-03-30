puts "🌱 Seeding spices..."

# Seed your database here

Box.create(title:"Body", upvotes:0)
Box.create(title:"Mind", upvotes:0)
Box.create(title:"Heart", upvotes:0)
Box.create(title:"Soul", upvotes:0)

Comment.create(user_id:1, text:"Hydration is key", box_id:1)
Comment.create(user_id:2, text:"8 Hours of sleep a night is vital for your wellbeing! dont compromise!", box_id:1)

Comment.create(user_id:1, text:"meditate every day. set a time. even if it is only for two minutes", box_id:2)
Comment.create(user_id:2, text:"Use your mind and keep it sharp", box_id:2)

Comment.create(user_id:1, text:"Nurture your heart and give it words of a encouragment", box_id:3)
Comment.create(user_id:2, text:"Keep your friends close", box_id:3)

Comment.create(user_id:1, text:"Your values are non-negotiables", box_id:4)
Comment.create(user_id:2, text:"Connection to your higher power is a daily practice", box_id:4)

User.create(username:"Moshe")
User.create(username:"Serref")







puts "✅ Done seeding!"
