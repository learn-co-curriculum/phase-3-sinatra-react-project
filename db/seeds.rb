puts "🌱 Seeding spices..."

# Seed your database here

#creating users
 puts "creating users..."
  user = User.create(name: "Halkano Malise")

#creating comments
  puts "Creating comment..."
  comment = Comment.create(comment: "Happy to be contribute on the project")

#creating posts
 puts "Creating Posts..."
 Post.create(user_id: user.id, comment_id: comment.id, title: "Gaming", content: "gaming is good for players",category: "Video Games")

puts "✅ Done seeding!"
