puts "🌱 Seeding spices..."

# Seed your database here
a1 = Artist.create(name: "Harry Styles", likes: true, image_url: "https://charts-static.billboard.com/img/2022/04/harry-styles-bma-as-it-was-po3-180x180.jpg")
a2 = Artist.create(name: "Kate Bush", likes: true, image_url: "https://nationalpurebreddogday.com/wp-content/uploads/2020/03/EC-anC8WwAEHMEh-393x400.jpg")
a3 = Artist.create(name: "DJ Khaled", likes: false, image_url: "https://charts-static.billboard.com/img/2022/08/dj-khaled-gl0-staying-alive-2c6-344x344.jpg")
a4 = Artist.create(name: "Jack Harlow", likes: false, image_url: "https://charts-static.billboard.com/img/2018/01/jack-harlow-i43-180x180.jpg")
a5 = Artist.create(name: "Amigo The Devil", likes: true, image_url: "https://images.squarespace-cdn.com/content/v1/5fb316358cb4212c02f56b7e/1605572404090-FTR0NUYDFHXZFTQXWHC2/AMIGO_BORN_AGAINST_3000px.jpg?format=500w")

g1 = Genre.create(title: "Pop Rock", favorite: true, top3: true)
g2 = Genre.create(title: "Pop", favorite: true, top3: true)
g3 = Genre.create(title: "Rap", favorite: false, top3: false)
g4 = Genre.create(title: "Rap", favorite: false, top3: false)
g5 = Genre.create(title: "Murder Folk", favorite: true, top3: true)

s1 = Song.create(artist_id: a1.id, genre_id: g1.id, song_title: "As it Was", release_date: "April 1, 2022")
s2 = Song.create(artist_id: a2.id, genre_id: g2.id, song_title: "Running Up That Hill", release_date: "August 5, 1985")
s3 = Song.create(artist_id: a3.id, genre_id: g3.id, song_title: "Staying Alive", release_date: "August 5, 2022")
s4 = Song.create(artist_id: a4.id, genre_id: g4.id, song_title: "First Class", release_date: "April 8, 2022")
s5 = Song.create(artist_id: a5.id, genre_id: g5.id, song_title: "Hell and You", release_date: "June 16, 2015")

puts "✅ Done seeding!"
