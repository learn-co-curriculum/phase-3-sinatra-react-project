require 'rest-client'
require 'faker'

puts "🌱 Seeding spices..."

# Seed your database here
books = RestClient.get "https://api.nytimes.com/svc/books/v3/lists/current/hardcover-fiction.json?api-key=7tSS3uKUkBEJIjGr7XHAHbKcajBHteUO"

articles = RestClient.get "https://api.nytimes.com/svc/mostpopular/v2/emailed/7.json?api-key=7tSS3uKUkBEJIjGr7XHAHbKcajBHteUO"

books_array = JSON.parse(books)["results"]["books"]
articles_array = JSON.parse(articles)["results"]

books_array.each do |book|
    Book.create(
        title: book["title"],
        author: book["author"],
        page_count: book["book_image_width"],
        publication_year: 2022,
        library_availability: true,
        image_url: book["book_image"]
    )
end

articles_array.each do |article|
    Article.create(
        title: article["title"],
        author: article["byline"],
        publication_date: article["published_date"],
        link_to_article: article["url"],
        image_url: article["media"].length == 0 ? nil : article["media"][0]["media-metadata"][0]["url"]
    )
end

User.create(username: "MeganM", email: "megan@gmail.com")

6.times do
    Favorite.create(
        star_rating: rand(1..5),
        book_id: rand(1..15),
        user_id: 1
    )
end

5.times do
    Stat.create(
        currently_reading: Faker::Boolean.boolean,
        finished_reading: Faker::Boolean.boolean,
        pages_read: rand(1..250),
        book_id: rand(1..15),
        user_id: 1
    )
end
puts "✅ Done seeding!"

