puts "🌱 Seeding spices..."
# Seed your database here
User.create(first_name: "Mace", last_name: "Windu", jedi_or_sith: "Jedi", jedi_rank: "Master", sith_rank: nil, species: "Human", image: "https://user-images.githubusercontent.com/106715328/186039808-cc918735-752e-4a50-9835-6219bbc251fd.jpg" )
User.create(first_name: "Yoda", last_name: nil, jedi_or_sith: "Jedi", jedi_rank: "Grand Master", sith_rank: nil, species: "Unknown", image: "https://user-images.githubusercontent.com/106715328/186040196-87b2cffb-8b4b-4676-a16e-5d6f9a256605.png")
User.create(first_name: "Plo", last_name: "Koon", jedi_or_sith: "Jedi", jedi_rank: "Master", sith_rank: nil, species: "Kel Dor", image: "https://user-images.githubusercontent.com/106715328/186040196-87b2cffb-8b4b-4676-a16e-5d6f9a256605.png")
User.create(first_name: "Kit", last_name: "Fisto", jedi_or_sith: "Jedi", jedi_rank: "Master", sith_rank: nil, species: "Nautolan", image: "https://user-images.githubusercontent.com/106715328/186040196-87b2cffb-8b4b-4676-a16e-5d6f9a256605.png")
User.create(first_name: "Darth", last_name: "Tyranus", jedi_or_sith: "Sith", jedi_rank: "Master", sith_rank: "Lord", species: "Human", image: "https://user-images.githubusercontent.com/106715328/186040196-87b2cffb-8b4b-4676-a16e-5d6f9a256605.png")
User.create(first_name: "Qui-Gon", last_name: "Jinn", jedi_or_sith: "Jedi", jedi_rank: "Master", sith_rank: nil, species: "Human", image: "https://user-images.githubusercontent.com/106715328/186040196-87b2cffb-8b4b-4676-a16e-5d6f9a256605.png")
User.create(first_name: "Obi-Wan", last_name: "Kenobi", jedi_or_sith: "Jedi", jedi_rank: "Master", sith_rank: nil, species: "Human", image: "https://user-images.githubusercontent.com/106715328/186040196-87b2cffb-8b4b-4676-a16e-5d6f9a256605.png")







puts "✅ Done seeding!"
