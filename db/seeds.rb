puts "Seeding Games, Players and Stores..."

# Seed your database here
50.times do
    Player.create(name: Faker::Name.name, username: Faker::Internet.username, email: Faker::Internet.email, rank: rand(1..100))
end

50.times do
    PlayerVideoGame.create(player_id: rand(1..50), video_game_id: rand(1..10))
end

VideoGame.create(title: "Halo", company_game_was_made_by: "Bungie", rating: 10, image: "https://igg-games.com/wp-content/uploads/2013/05/Halo-Combat-Evolved-Cover-Art-wallpaper.jpg")
VideoGame.create(title: "Super Smash Bros.", company_game_was_made_by: "Nintendo", rating: 9, image: "https://th.bing.com/th/id/R.0f0e6c7692613381cd55ac4e4781d15d?rik=UcvNz4oYslDL3A&riu=http%3a%2f%2focremix.org%2ffiles%2fimages%2fgames%2fn64%2f9%2fsuper-smash-bros-n64-cover-front-32059.jpg&ehk=is2eoyOAH743Jkph8bSDfobfd512NuzgeA4Ua3H7qPY%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1")
VideoGame.create(title: "World of Warcraft", company_game_was_made_by: "Blizzard", rating: 10, image: "https://th.bing.com/th/id/R.bce73196b9cce0d902ee138a7e40dcf6?rik=gjnyzye55fuK3Q&riu=http%3a%2f%2fwww.mobygames.com%2fimages%2fcovers%2fl%2f216725-world-of-warcraft-macintosh-front-cover.jpg&ehk=SqueNp%2b0QPRRHP%2fGsOoTgQixR1TWp%2f%2bIdJqERFuiWvc%3d&risl=&pid=ImgRaw&r=0")
VideoGame.create(title: "Golden Eye", company_game_was_made_by: "Nintendo", rating: 10, image: "https://th.bing.com/th/id/OIP.8FhwoxUahMWlzwnB1tZqJgHaFI?pid=ImgDet&rs=1")
VideoGame.create(title: "Elden Ring", company_game_was_made_by: "From Software", rating: 10, image: "https://uproxx.com/wp-content/uploads/2021/06/ELDEN-RING-1.jpg?w=1024")
VideoGame.create(title: "The Legend of Zelda: Ocarina of Time", company_game_was_made_by: "Nintendo", rating: 10, image: "https://th.bing.com/th/id/OIP.nlr3dnLsDtznq1cE1_OlCwHaFK?pid=ImgDet&rs=1")
VideoGame.create(title: "Grand Theft Auto: Vice City", company_game_was_made_by: "Rockstar", rating: 10, image: "https://th.bing.com/th/id/R.c1b2b2c18ac1084c09f7850a5bc9e577?rik=hZ0VJcah%2fEOZyQ&riu=http%3a%2f%2fpics.mobygames.com%2fimages%2fcovers%2flarge%2f1053024938-00.jpg&ehk=j53gHczlzAzHCxDn9y5L6nZgoe%2ftZDnI0xap4xbC4mY%3d&risl=&pid=ImgRaw&r=0")
VideoGame.create(title: "Batman: Arkham City", company_game_was_made_by: "Warner Bros. Games", rating: 10, image: "https://th.bing.com/th/id/R.a6d64160cb8d47d7238a772fcc8d9b3e?rik=rZhB%2fiPivKG68Q&riu=http%3a%2f%2f4.bp.blogspot.com%2f-w3oJKP20qLc%2fTxCQZ6S0JaI%2fAAAAAAAAA74%2fPN7tZ0QYHKs%2fs1600%2fBatman_arkham_city_cover_ps3_jamesbrunner_detail0.jpg&ehk=o3C4%2bUC8GBIJpABjROE4g0myq4hIaXaBu3lJ6CtY3CI%3d&risl=&pid=ImgRaw&r=0")
VideoGame.create(title: "Valheim", company_game_was_made_by: "Iron Gate Studio", rating: 10, image: "https://static-cdn.jtvnw.net/ttv-boxart/Valheim.jpg")
VideoGame.create(title: "Madden", company_game_was_made_by: "EA Sports", rating: 10, image: "https://cdn11.bigcommerce.com/s-ymgqt/images/stencil/2560w/products/26379/27770/madden_93__76849.1623428687.jpg?c=2")


puts "✅ Done seeding!"
