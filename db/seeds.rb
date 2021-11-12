Application.destroy_all
Application.reset_pk_sequence
Communication.destroy_all
Communication.reset_pk_sequence

puts "🌱 Seeding spices..."

# Seed your database here
Application.create()
Application.create()
Application.create()
Application.create()
Application.create()

Communication.create()
Communication.create()
Communication.create()
Communication.create()

puts "✅ Done seeding!"
