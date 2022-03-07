puts "🌱 Seeding spices..."

#posts
p1 = Post.create(content: "winter is coming")

#user
u1 = User.create(username: "John_Snow", photo_src: "https://th.bing.com/th/id/R.97b7c380105d4492dcdf6edfa2a037b4?rik=ngUecPVKWdZjDg&pid=ImgRaw&r=0", bio: "Knights Watch member")
u2 = User.create(username: "Daenerys Targaryen", photo_src: "https://th.bing.com/th/id/OIP.OgbYKBZn9MKu-jL1CWGTMAHaNK?pid=ImgDet&rs=1", bio: "Dragon Mom")


# Seed your database here
#comment
c1 = Comment.create(content: "wow", user_id: u2.id, post_id: p1.id)


puts "✅ Done seeding!"
