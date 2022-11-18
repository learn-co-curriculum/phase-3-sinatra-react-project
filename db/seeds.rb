puts "🌱 Seeding spices..."
u1 = User.create(name: "Alexis Torosina", username: "alexistorosina", image_url:"https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png", followers: 15, following: 126, password: "123")
u2 = User.create(name: "Taylan Postalci", username: "taylanpostalci", image_url:"https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png", followers: 78, following: 5, password: "123")
u3 = User.create(name: "Dulat Kussainov", username: "dulat.kussainov", image_url:"https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png", followers: 78, following: 5, password: "123")


p1 = Post.create(description: ":/", likes: 0, is_liked: false, image_url: "https://cdn.discordapp.com/attachments/1040387921552879703/1043213056467017779/IMG_3133.jpg", date_posted: Date.today)
p2 = Post.create(description: "Cats", likes: 0, is_liked: false, image_url: "https://mediaproxy.salon.com/width/1200/https://media.salon.com/2022/05/cats-party-0516221.jpg", date_posted: Date.today)
p3 = Post.create(description: "Fun day!", likes: 0, is_liked: false, image_url: "https://cdn.discordapp.com/attachments/1040387921552879703/1043212403388727357/IMG_2110.jpg", date_posted: Date.today)

up1 = UsersPost.create(user_id: u1.id, post_id: p1.id)
up2 = UsersPost.create(user_id: u2.id, post_id: p2.id)
up2 = UsersPost.create(user_id: u3.id, post_id: p3.id)

c1 = Comment.create(comment: "hahaha", post_id: p1.id, user_id: u2.id, comment_date: Date.today)
c2 = Comment.create(comment: "Cute, Kitties!", post_id: p2.id, user_id: u3.id, comment_date: Date.today)
c3 = Comment.create(comment: "nice!", post_id: p3.id, user_id: u1.id, comment_date: Date.today)


puts "✅ Done seeding!"
