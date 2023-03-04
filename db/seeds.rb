puts "🌱 Seeding spices..."

# Seed your database here
# Create some users
user1=User.create(username: "levy", email: "levy@example.com", password: "22222")
user1=User.create(username: "njiru", email: "njiru@example.com", password: "22222")
user1=User.create(username: "muguro", email: "muguro@example.com", password: "22222")
user1=User.create(username: "nji", email: "nji@example.com", password: "22222")
user1=User.create(username: "donlevy", email: "donlevy@example.com", password: "22222")
user1=User.create(username: "donnjiru", email: "donnjiru@example.com", password: "22222")


project1 = Project.create(
    title: "project one",
    description: "first"
)

project2 = Project.create(
    title: "project two",
    description: "two"
)

project3 = Project.create(
    title: "project three",
    description: "three"
)

project4 = Project.create(
    title: "project four",
    description: "four"
)



puts "✅ Done seeding!"
