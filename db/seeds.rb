Genre.destroy_all
Movie.destroy_all

puts "🌱 Seeding spices..."

Genre.create(name: "Comedy")
Genre.create(name: "Action/Adventure")
Genre.create(name: "Sci-Fi")
Genre.create(name: "Horror/Thriller")
Genre.create(name: "Drama")
Genre.create(name: "Documentary")
Genre.create(name: "Sports")

Movie.create(title: "Braveheart", release_date: '1995', watched: true, genre_id: 2, imageUrl: "https://m.media-amazon.com/images/I/51PvUkCVqOL._AC_.jpg")
Movie.create(title: "Toy Story", release_date: '1995', watched: true, genre_id: 1, imageUrl: "https://m.media-amazon.com/images/I/71aBLaC4TzL._AC_SL1330_.jpg")
Movie.create(title: "Cars", release_date: "2006", watched: true, genre_id: 1, imageUrl: "https://m.media-amazon.com/images/I/811IcpNS05L._AC_SL1303_.jpg")
Movie.create(title: "Hot Rod", release_date: "2007", watched: true, genre_id: 1, imageUrl: "https://i.ebayimg.com/images/g/W3sAAOSweclhf5c4/s-l400.jpg")
Movie.create(title: "Die Hard", release_date: "1988", watched: true, genre_id: 2, imageUrl: "https://m.media-amazon.com/images/M/MV5BZjRlNDUxZjAtOGQ4OC00OTNlLTgxNmQtYTBmMDgwZmNmNjkxXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg")
Movie.create(title: "Lethal Weapon", release_date: "1987", watched: true, genre_id: 2, imageUrl: "https://m.media-amazon.com/images/I/51UM0NLMlVL._AC_.jpg")
Movie.create(title: "Beverly Hills Cop", release_date: "1984", watched: true, genre_id: 1, imageUrl: "https://m.media-amazon.com/images/I/51BdPTnWmeL._AC_.jpg")
Movie.create(title: "Terminator", release_date: "1984", watched: true, genre_id: 2, imageUrl: "https://m.media-amazon.com/images/I/61qCgQZyhOL._AC_SY741_.jpg")
Movie.create(title: "Donnie Darko", release_date: "2001", watched: true, genre_id: 3, imageUrl: "https://cdnb.artstation.com/p/marketplace/presentation_assets/000/047/271/large/file.jpg?1542734586")
Movie.create(title: "Blade Runner", release_date: "1982", watched: true, genre_id: 3, imageUrl: "https://m.media-amazon.com/images/I/51bBVaOu5VL._AC_.jpg")
Movie.create(title: "Alien", release_date: "1979", watched: true, genre_id: 4, imageUrl: "https://images.photowall.com/products/59754/alien.jpg?h=699&q=85")
Movie.create(title: "TRON: Legacy", release_date: "2010", watched: true, genre_id: 3, imageUrl: "https://cdn.shopify.com/s/files/1/0057/3728/3618/products/c907d641f525f91a4587653ddec04eec_0d89ae3f-2bbd-4fe1-afce-0b43a7c71d5a_480x.progressive.jpg?v=1573595112")
Movie.create(title: "300", release_date: "2006", watched: true, genre_id: 2, imageUrl: "https://m.media-amazon.com/images/I/51MtJBws9ZL._AC_.jpg")
Movie.create(title: "Remember The Titans", release_date: "2000", watched: true, genre_id: 7, imageUrl: "https://m.media-amazon.com/images/I/510TwairLCL._AC_.jpg")
Movie.create(title: "Radio", release_date: "1985", watched: true, genre_id: 5, imageUrl: "https://alchetron.com/cdn/radio-2003-film-d1ceba4f-0885-439d-9eae-c1c397a84bd-resize-750.jpg")

# Seed your database here

puts "✅ Done seeding!"
