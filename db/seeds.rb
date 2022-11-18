puts "🌱 Seeding spices..."
u1 = User.create(name: "Alexis Torosina", username: "alexistorosina", image_url:"https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png", followers: 15, following: 126, password: "123")
u2 = User.create(name: "Taylan Postalci", username: "taylanpostalci", image_url:"https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png", followers: 78, following: 5, password: "123")


p1 = Post.create(description: "My Dog", likes: 0, is_liked: false, image_url: "https://thumbs.dreamstime.com/z/golden-retriever-dog-21668976.jpg", date_posted: Date.today)
p2 = Post.create(description: "Cats", likes: 0, is_liked: false, image_url: "https://mediaproxy.salon.com/width/1200/https://media.salon.com/2022/05/cats-party-0516221.jpg", date_posted: Date.today)


up1 = UsersPost.create(user_id: u1.id, post_id: p2.id)
up2 = UsersPost.create(user_id: u2.id, post_id: p1.id)

c1 = Comment.create(comment: "Breed?", post_id: p1.id, user_id: u1.id, comment_date: Date.today)
c2 = Comment.create(comment: "Cute, Kitties!", post_id: p2.id, user_id: u2.id, comment_date: Date.today)

puts "✅ Done seeding!"
