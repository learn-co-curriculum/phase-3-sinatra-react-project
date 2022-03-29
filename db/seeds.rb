puts "🌱 Seeding spices..."

# Seed your database here

Box.create(title:"Phsical Health")
Box.create(title:"Academics")
Box.create(title:"Emotional Security")
Box.create(title:"Spiritual integrity")

Comment.create(text:"Hydration is key", box_id:1)
Comment.create(text:"8 Hours of sleep a night is vital for your wellbeing! dont compromise!", box_id:1)

Comment.create(text:"meditate every day. set a time. even if it is only for two minutes", box_id:2)
Comment.create(text:"Use your mind and keep it sharp", box_id:2)

Comment.create(text:"Nurture your heart and give it words of a encouragment", box_id:3)
Comment.create(text:"Keep your friends close", box_id:3)

Comment.create(text:"Your values are non-negotiables", box_id:4)
Comment.create(text:"Connection to your higher power is a daily practice", box_id:4)

Upvote.create(amount:5 , box_id:1)
Upvote.create(amount:7 , box_id:2)
Upvote.create(amount:9 , box_id:3)
Upvote.create(amount:10 , box_id:4)







puts "✅ Done seeding!"
