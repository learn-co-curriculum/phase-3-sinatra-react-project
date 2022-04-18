puts "🌱 Seeding spices..."
puts "Deleting Characters data..."
Character.destroy_all 
Film.destroy_all
User.destroy_all

puts "Creating films..."

film1 = Film.create(name: "Star Wars: The Last Jedi", image_url: "https://static.wikia.nocookie.net/disney/images/8/8c/The_Last_Jedi_Theatrical_Poster.jpg/revision/latest/scale-to-width-down/1031?cb=20171010005712")
film2 = Film.create(name: "Star Wars: The Rise of Skywalker", image_url: "https://static.wikia.nocookie.net/disney/images/0/09/Star_Wars_The_Rise_of_Skywalker_final_poster.jpeg/revision/latest/scale-to-width-down/1032?cb=20211218021831")
film3 = Film.create(name: "Star Wars: The Rise of Skywalker", image_url: "https://static.wikia.nocookie.net/disney/images/0/09/Star_Wars_The_Rise_of_Skywalker_final_poster.jpeg/revision/latest/scale-to-width-down/1032?cb=20211218021831")
film4 = Film.create(name: "Star Wars: Return of the Jedi", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS27sD1d6hJRsbE4o5x21dsNPQ9wXVAbKjLDA&usqp=CAU")
film5 = Film.create(name: "Star Wars: The Phantom Menace", image_url: "https://m.media-amazon.com/images/M/MV5BYTRhNjcwNWQtMGJmMi00NmQyLWE2YzItODVmMTdjNWI0ZDA2XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg")

puts "Creating characters..."

c1 = Character.create(name: "Porg", image_url: "https://static.wikia.nocookie.net/disney/images/a/aa/Porg.jpg/revision/latest/scale-to-width-down/1030?cb=20180103040758", film_id: film1.id )
c2 = Character.create(name: "Jawas", image_url: "https://static.wikia.nocookie.net/disney/images/0/02/Jawa.jpg/revision/latest/scale-to-width-down/1032?cb=20191024002057", film_id: film2.id )
c3 = Character.create(name: "Ewoks", image_url: "https://static.wikia.nocookie.net/disney/images/c/c2/Ewok.jpg/revision/latest/scale-to-width-down/1032?cb=20191024001658", film_id: film3.id )
c4 = Character.create(name: "Hutt", image_url: "https://static.wikia.nocookie.net/disney/images/4/44/Jabba.png/revision/latest/scale-to-width-down/1031?cb=20130430195617", film_id: film4.id )
c5 = Character.create(name: "Bantha", image_url:"https://static.wikia.nocookie.net/disney/images/a/a2/Bantha-ST.jpg/revision/latest?cb=20130604032107", film_id: film5.id )


puts "Creating User..."


puts "✅ Done seeding!"
