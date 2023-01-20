puts "Deleting Ticket/User/Concert data..."
Ticket.destroy_all
User.destroy_all
Concert.destroy_all

puts "Creating concerts..."
taylor_swift = Concert.create(artist: "Taylor Swift", date: "March 5th, 2023", unsold_tickets: 10)
sza = Concert.create(artist: "SZA", date: "June 27th, 2023", unsold_tickets: 0)
bad_bunny = Concert.create(artist: "Bad Bunny", date: "November 8th, 2023", unsold_tickets: 8)

puts "Creating users..."
huey = User.create(name: "Huey", email: "huey@hotmail.com", password: "hunter12")
duey = User.create(name: "Duey", email: "duey@hotmail.com", password: "password")
louie = User.create(name: "Louie", email: "louie@hotmail.com", password: "Correct Horse Battery Staple")
donald = User.create(name: "Donald Duck", email: "donald@hotmail.com", password: "Donald")
daisy = User.create(name: "Daisy Duck", email: "daisy@hotmail.com", password: "0000")

puts "Creating tickets..."
10.times do
    user_id = User.ids.sample
    concert_id = Concert.ids.sample
    Ticket.create(user_id: user_id, concert_id: concert_id)
end

puts "Seeding done!"