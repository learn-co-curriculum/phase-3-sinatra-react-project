puts "🌱 Seeding spices..."

# Seed your database here

genres = ["drama", "comedy", "action", "fantasy", "horror", "romance", "western", "thriller"]
10.times do
    Movie.create(
        title: Faker::Movie.title,
        genre: genres.sample,
        description: Faker::Movie.quote,
        thumbnail: "https://photoadking.com/images/template-images/poster/movie/2.webp",
        movie_link: "https://www.youtube.com/watch?v=rhmT5yTkGfU",
    )
end

5.times do
    Profile.create(user_name: Faker::Name.first_name)
end

movie = Movie.all.sample
profile = Profile.all.sample
20.times do 
    movie = Movie.all.sample
    profile = Profile.all.sample
    MovieSelection.create(
        movie_id: movie.id,
        profile_id: profile.id
    )
end

##word

puts "✅ Done seeding!"
