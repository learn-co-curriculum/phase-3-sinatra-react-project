Application.destroy_all
Application.reset_pk_sequence

puts "🌱 Seeding spices..."

# Seed your database here
Application.create()
Application.create()
Application.create()
Application.create()
Application.create()

puts "✅ Done seeding!"
