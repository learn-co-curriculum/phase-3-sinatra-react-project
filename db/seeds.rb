require 'csv'
puts "🌱 Seeding spices..."

csv_text = File.read('lib/seeds/movie_lists_movies.csv')
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |t|
      Movie.create({
          title: t['title'], 
          img_url: t['img_url'], 
          release_year: t['release_year'], 
          genre: t['genre'], 
          desc: t['desc'],
          runtime:t['runtime'],
          rating: t['rating']
        })
end

shows = File.read('lib/seeds/show_lists_TV_shows.csv')
csv = CSV.parse(shows, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |t|
      Show.create({
          title: t['title'], 
          img_url: t['img_url'], 
          release_year: t['release_year'], 
          genre: t['genre'], 
          desc: t['desc'],
          total_episode:t['total_episode'],
          total_season:t['total_season'],
          runtime:t['runtime'],
          rating:t['rating']
        })
end

40.times do
    User.create(full_name: Faker::Name.name)
end

20.times do 
    Review.create(comment: Faker::Lorem.sentence(word_count: 8), rating: rand(1..10), show_id: Show.all.sample.id, user_id: User.all.sample.id)
end

Review.create(comment: Faker::Lorem.sentence(word_count: 8), rating: rand(1..10), show_id: Show.first.id, user_id: User.first.id)

20.times do 
    Review.create(comment: Faker::Lorem.sentence(word_count: 8), rating: rand(1..10), movie_id: Show.all.sample.id, user_id: User.all.sample.id)
end




puts "✅ Done seeding!"
