puts "🌱 Seeding spices..."

puts "Deleting old data..."
User.destroy_all
Movie.destroy_all
Review.destroy_all

# Seed your database here

puts "Creating users..."
user1 = User.create(name: Faker::Name.name)
user2 = User.create(name: Faker::Name.name)
user3 = User.create(name: Faker::Name.name)

puts "Creating movies..."

movie1 = Movie.create(
    name: "Six Degrees of Separation"
    year: 1993
    avg_rating: Faker::Number.number(digits: 1)
)

movie2 = Movie.create(
    name: "Bad Boys"
    year: 1995
    avg_rating: Faker::Number.number(digits: 1)
)

movie3 = Movie.create(
    name: "Independence Day"
    year: 1996
    avg_rating: Faker::Number.number(digits: 1)
)

movie4 = Movie.create(
    name: "Men in Black"
    year: 1997
    avg_rating: Faker::Number.number(digits: 1)
)

movie5 = Movie.create(
    name: "Wild Wild West"
    year: 1999
    avg_rating: Faker::Number.number(digits: 1)
)

movie6 = Movie.create(
    name: "Ali"
    year: 2001
    avg_rating: Faker::Number.number(digits: 1)
)

movie7 = Movie.create(
    name: "Men in Black II"
    year: 2002
    avg_rating: Faker::Number.number(digits: 1)
)

movie8 = Movie.create(
    name: "Bad Boys II"
    year: 2003
    avg_rating: Faker::Number.number(digits: 1)
)

movie9 = Movie.create(
    name: "I, Robot"
    year: 2004
    avg_rating: Faker::Number.number(digits: 1)
)

movie10 = Movie.create(
    name: "Hitch"
    year: 2005
    avg_rating: Faker::Number.number(digits: 1)
)

movie11 = Movie.create(
    name: "The Pursuit of Happyness"
    year: 2006
    avg_rating: Faker::Number.number(digits: 1)
)

movie12 = Movie.create(
    name: "I Am Legend"
    year: 2007
    avg_rating: Faker::Number.number(digits: 1)
)

movie13 = Movie.create(
    name: "Hancock"
    year: 2008
    avg_rating: Faker::Number.number(digits: 1)
)

movie14 = Movie.create(
    name: "The Pursuit of Happyness"
    year: 2006
    avg_rating: Faker::Number.number(digits: 1)
)

movie15 = Movie.create(
    name: "Men in Black 3"
    year: 2012
    avg_rating: Faker::Number.number(digits: 1)
)

movie16 = Movie.create(
    name: "After Earth"
    year: 2013
    avg_rating: Faker::Number.number(digits: 1)
)

movie17 = Movie.create(
    name: "Focus"
    year: 2015
    avg_rating: Faker::Number.number(digits: 1)
)

movie18 = Movie.create(
    name: "Suicide Squad"
    year: 2016
    avg_rating: Faker::Number.number(digits: 1)
)

movie19 = Movie.create(
    name: "Bright"
    year: 2017
    avg_rating: Faker::Number.number(digits: 1)
)

movie20 = Movie.create(
    name: "Aladdin"
    year: 2019
    avg_rating: Faker::Number.number(digits: 1)
)

movie21 = Movie.create(
    name: "Gemini Man"
    year: 2019
    avg_rating: Faker::Number.number(digits: 1)
)
movie22 = Movie.create(
    name: "Bad Boys for Life"
    year: 2020
    avg_rating: Faker::Number.number(digits: 1)
)

movie23 = Movie.create(
    name: "King Richard"
    year: 2021
    avg_rating: Faker::Number.number(digits: 1)
)
puts "Creating reviews..."
Review.create(
    rating: rand(1..10)
    comment: Faker::Lorem.sentence
    user_id: user1.id
    movie_id: movie1.id
)
Review.create(
    rating: rand(1..10)
    comment: Faker::Lorem.sentence
    user_id: user1.id
    movie_id: movie2.id
)
Review.create(
    rating: rand(1..10)
    comment: Faker::Lorem.sentence
    user_id: user2.id
    movie_id: movie1.id
)

puts "✅ Done seeding!"
