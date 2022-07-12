# Genre.destroy_all
# Movie.destroy_all

puts "🌱 Seeding spices..."

Genre1 = Genre.create(name: "Comedy")
genre2 = Genre.create(name: "Action/Adventure")
genre3 = Genre.create(name: "sci-fi")
genre4 = Genre.create(name: "horror/thriller")
genre5 = Genre.create(name: "drama")
genre6 = Genre.create(name: "documentory")
genre7 = Genre.create(name: "sports")

40.times do
    Movie.create(title: Faker::Movie.title, release_date: Faker::Date.between(from: '1950-09-23', to: '2022-01-25'), watched: Faker::Boolean.boolean, genre_id: Genre.ids.sample)
end
# Seed your database here

puts "✅ Done seeding!"
