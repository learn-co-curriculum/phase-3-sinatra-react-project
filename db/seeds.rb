puts "🌱 Seeding reservations..."
require "date"

# Seed your database here
c1 = Client.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
c2 = Client.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
c3 = Client.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
c4 = Client.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
c5 = Client.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
c6 = Client.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
c7 = Client.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)

s1 = Service.create(name: "Vinyasa Yoga", description: "Yoga characterized by stringing postures together so that you move from one to another, seamlessly, using breath.", datetime: Date.today, duration: 60, price: 10)
# s2 = Service.create(name: "Hot Yoga", description: "Yoga as exercise performed under hot and humid conditions, resulting in considerable sweating", datetime: DateTime.new(2021, 10, 15, 8, 0), duration: 50, price: 15)
# s3 = Service.create(name: "Meditation", description: "This class will focus on slow, deep breathing techniques and meditative postures. Move gracefully and synchronize the breath with the movement.", datetime: DateTime.new(2021, 10, 11, 11, 0), duration: 30, price: 12)
# s4 = Service.create(name: "Meditation (1 hour)", description: "This class will focus on slow, deep breathing techniques and meditative postures. Move gracefully and synchronize the breath with the movement.", datetime: DateTime.new(2021, 10, 12, 7, 0), duration: 60, price: 15)
# s5 = Service.create(name: "Aquatics", description: "Splashing, stretching, twisting, even shouting, laughing, hooting, and hollering. If you're up for some real fun while getting fit, give this class a go.", datetime: DateTime.new(2021, 10, 14, 12, 0), duration: 45, price: 15)
# s6 = Service.create(name: "Spin", description: "Ride to driving beats that will improve your cardio endurance and muscular strength. This workout is designed for multi levels of fitness, leaving you drenched in sweat and inspired to come back for more.", datetime: DateTime.new(2021, 10, 14, 17, 0), duration: 50, price: 18)
# s7 = Service.create(name: "Hip Hop Dance", description: "With routines set to old and new school hip hop music, you will want to get up and move. Don't worry if you can't dance, this class will have you moving like a Hip Hop master in no time.", datetime: DateTime.new(2021, 10, 14, 17, 0), duration: 60, price: 18)

# Reservation.create(client: c1, service: s4)
# Reservation.create(client: c2, service: s3)
# Reservation.create(client: c3, service: s2)
# Reservation.create(client: c4, service: s1)
# Reservation.create(client: c5, service: s7)
# Reservation.create(client: c6, service: s6)
# Reservation.create(client: c7, service: s5)
# Reservation.create(client: c1, service: s7)
# Reservation.create(client: c2, service: s1)
# Reservation.create(client: c3, service: s6)
# Reservation.create(client: c4, service: s2)
# Reservation.create(client: c5, service: s5)
# Reservation.create(client: c6, service: s4)
# Reservation.create(client: c7, service: s3)

puts "✅ Done seeding!"
