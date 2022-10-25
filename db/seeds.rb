require "net/http"
require "open-uri"
require "json"

puts "🌱 Seeding spices..."

key = open("./db/.key").read

URL =
  "https://api.discogs.com/users/theyear1000/collection/folders/0/releases?per_page=100#{key}"

uri = URI.parse(URL)
response = Net::HTTP.get_response(uri)
data = JSON.parse(response.body)
data["releases"].map do |r|
  reissue =
    r["basic_information"]["formats"][0]["descriptions"].include? "Reissue"
  blank_year = r["basic_information"]["year"] == 0
  Album.create(
    name: r["basic_information"]["title"],
    date_added: r["date_added"],
    cover_image: r["basic_information"]["cover_image"],
    release_description:
      r["basic_information"]["formats"][0]["descriptions"].join(", "),
    year: r["basic_information"]["year"],
    artist_id:
      Artist.find_or_create_by(
        name:
          if r["basic_information"]["artists"][0]["name"].slice(-3, 1) == "("
            r["basic_information"]["artists"][0]["name"].chop.chop.chop.chop
          else
            r["basic_information"]["artists"][0]["name"]
          end,
        resource_url: r["basic_information"]["artists"][0]["resource_url"]
      ).id,
    genre_id:
      r["basic_information"]["genres"]
        .map { |g| Genre.find_or_create_by(name: g).id }
        .join(", "),
    needs_year_update: reissue || blank_year,
    master_album_url: r["basic_information"]["master_url"]
  )
end

1000.times do
  ListenEvents.create(
    album_id: rand(1..100),
    created_at: DateTime.now - (rand * 7),
    updated_at: DateTime.now - (rand * 7)
  )
end

puts "✅ Done seeding!"
