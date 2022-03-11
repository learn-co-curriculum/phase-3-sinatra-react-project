puts "🌱 Seeding spices..."

#posts
# p1 = Post.create(content: "winter is coming")
# p2 = Post.create(content: "where are my dragons?")

p1 = Post.create(content: "Winter is coming", user_id: 1, is_click: false)
p2 = Post.create(content: "Where are my dragons?", user_id: 2, is_click: false)
p3 = Post.create(content: "I am hungry", user_id: 3, is_click: false)
p4 = Post.create(content: "The night is dark and full of terrors", user_id: 4, is_click: false)

# user
u1 = User.create(username: "Jon_Snow", photo_src: "https://th.bing.com/th/id/R.97b7c380105d4492dcdf6edfa2a037b4?rik=ngUecPVKWdZjDg&pid=ImgRaw&r=0", bio: "Night's Watch Member", post_id: p1.id, password: "snow")
u2 = User.create(username: "Daenerys Targaryen", photo_src: "https://yt3.ggpht.com/ytc/AKedOLTYeouAe1jSmHIe_sYzX4rmNsrvFJfF6kvlgE5euQ=s900-c-k-c0x00ffffff-no-rj", bio: "Dragon Mom", post_id: p2.id, password:"queen")
u3 = User.create(username: "Drogon", photo_src: "https://i.pinimg.com/originals/dd/30/00/dd3000b53727d5d8466206baa8613d5c.jpg", bio: "Biggest Dragon in the Land", post_id: p3.id, password: "fire")
u4 = User.create(username: "Melisandre", photo_src: "https://s3.r29static.com/bin/entry/d7b/680x816,85/2171631/image.webp", bio: "Lord of Light Follower", post_id: p4.id, password: "light")


# u1 = User.create(username: "John_Snow", photo_src: "https://th.bing.com/th/id/R.97b7c380105d4492dcdf6edfa2a037b4?rik=ngUecPVKWdZjDg&pid=ImgRaw&r=0", bio: "Night's Watch Member")
# u2 = User.create(username: "Daenerys Targaryen", photo_src: "https://th.bing.com/th/id/OIP.OgbYKBZn9MKu-jL1CWGTMAHaNK?pid=ImgDet&rs=1", bio: "Dragon Mom")


# Seed your database here
#comment
c1 = Comment.create(content: "wow", user_id: u2.id, post_id: p1.id)
c2 = Comment.create(content: "Hi mom", user_id:u3.id, post_id: p2.id)


puts "✅ Done seeding!"