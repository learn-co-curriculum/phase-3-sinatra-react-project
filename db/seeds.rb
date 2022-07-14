Genre.destroy_all
Movie.destroy_all

puts "🌱 Seeding spices..."

Genre.create(name: "Comedy")
Genre.create(name: "Action/Adventure")
Genre.create(name: "sci-fi")
Genre.create(name: "horror/thriller")
Genre.create(name: "drama")
Genre.create(name: "documentory")
Genre.create(name: "sports")

Movie.create(title: "Braveheart", release_date: '1995', watched: true, genre_id: 2, imageUrl: '')
Movie.create(title: "Toy Story", release_date: '1995', watched: true, genre_id: 1, imageUrl: '')
Movie.create(title: "Cars", release_date: "2006", watched: true, genre_id: 1, imageUrl: "")
Movie.create(title: "Hot Rod", release_date: "2007", watched: true, genre_id: 1, imageUrl: "")
Movie.create(title: "Die Hard", release_date: "1988", watched: true, genre_id: 2, imageUrl: "")
Movie.create(title: "Lethal Weapon", release_date: "1987", watched: true, genre_id: 2, imageUrl: "")
Movie.create(title: "Beverly Hills Cop", release_date: "1984", watched: true, genre_id: 1, imageUrl: "")
Movie.create(title: "Terminator", release_date: "1984", watched: true, genre_id: 2, imageUrl: "")
Movie.create(title: "Donnie Darko", release_date: "2001", watched: true, genre_id: 3, imageUrl: "")
Movie.create(title: "Blade Runner", release_date: "1982", watched: true, genre_id: 3, imageUrl: "")
Movie.create(title: "Alien", release_date: "1979", watched: true, genre_id: 4, imageUrl: "")
Movie.create(title: "TRON: Legacy", release_date: "2010", watched: true, genre_id: 3, imageUrl: "")
Movie.create(title: "300", release_date: "2006", watched: true, genre_id: 2, imageUrl: "")
Movie.create(title: "Remember The Titans", release_date: "2000", watched: true, genre_id: 7, imageUrl: "")
Movie.create(title: "Radio", release_date: "1985", watched: true, genre_id: 5, imageUrl: "")


# Seed your database here

puts "✅ Done seeding!"
