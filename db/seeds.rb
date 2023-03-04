puts "🌱 Seeding spices..."

# Seed your database here
# Create some users
User.create(username: "levy", email: "levy@example.com", password: "22222")
User.create(username: "njiru", email: "njiru@example.com", password: "22222")
User.create(username: "muguro", email: "muguro@example.com", password: "22222")
User.create(username: "nji", email: "nji@example.com", password: "22222")
User.create(username: "donlevy", email: "donlevy@example.com", password: "22222")
User.create(username: "donnjiru", email: "donnjiru@example.com", password: "22222")


Project.create(
    title: "project one",
    description: "first"
)

Project.create(
    title: "project two",
    description: "two"
)

Project.create(
    title: "project three",
    description: "three"
)

Project.create(
    title: "project four",
    description: "four"
)

Member.create(
    user_id: User.first.id,
    project_id: Project.first.id
)

Member.create(
    user_id: User.second.id,
    project_id: Project.second.id
)

Member.create(
    user_id: User.third.id,
    project_id: Project.third.id
)

Member.create(
    user_id: User.last.id,
    project_id: Project.last.id
)






puts "✅ Done seeding!"
