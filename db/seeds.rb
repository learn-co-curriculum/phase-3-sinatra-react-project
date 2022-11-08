puts "🌱 Seeding spices..."

# Seed your database here

# # location dummy data
# location1=Location.create(name: "Rongai")
# location2=Location.create(name: "Roysambu")
# location3=Location.create(name: "Kahawa Sukari")
# location4=Location.create(name: "Ngara")
# location5=Location.create(name: "Juja")
# location6=Location.create(name: "Langata")

# # block dummy
# block1=Block.create(name: "Capital M", image: "https://thumbs.dreamstime.com/z/apartment-building-modern-buildings-new-westminster-british-columbia-canada-40351928.jpg", description: "Awesome views", location_id: 1, apartments: 10, amenities: "-Security cameras, free wifi and skyview")
# block2=Block.create(name: "Victoria", image: "https://thumbs.dreamstime.com/z/apartment-building-modern-buildings-new-westminster-british-columbia-canada-40351928.jpg", description: "Great parking lot", location_id: 2, apartments: 5, amenities: "-Security cameras, skyview")
# block3=Block.create(name: "Qwetu", image: "https://thumbs.dreamstime.com/z/apartment-building-modern-buildings-new-westminster-british-columbia-canada-40351928.jpg", description: "spacious", location_id: 3, apartments: 7, amenities: "-Security cameras, free wifi")

# #apartments dummy
# apartment1=Apartment.create(room: "1Bedroom Apartment", apartment_number: 5, image: "https://images.unsplash.com/photo-1628592102751-ba83b0314276?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1997&q=80", description: "great spacious", block_id: 2, rent: 25000)
# apartment2=Apartment.create(room: "2Bedroom Apartment", apartment_number: 3, image: "https://images.unsplash.com/photo-1628592102751-ba83b0314276?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1997&q=80", description: "nice kitchen area", block_id: 3, rent: 30000)
# apartment3=Apartment.create(room: "3Bedroom Apartment", apartment_number: 6, image: "https://images.unsplash.com/photo-1628592102751-ba83b0314276?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1997&q=80", description: "great balcony", block_id: 2, rent: 18000)

# # client dummy data
# client1=Client.create(name: "Helga", age: 32, phone_number: 784445232)
# client2=Client.create(name: "Sharon", age: 16, phone_number: 759493922)
# client3=Client.create(name: "Zak", age: 24, phone_number: 756977132)
# client4=Client.create(name: "Joash", age: 26, phone_number: 758382788)
# client5=Client.create(name: "Stephen", age: 45, phone_number: 793220222)

# # caretaker dummy
# caretaker1=Caretaker.create(name: "Julius", block_id:1)
# caretaker2=Caretaker.create(name: "Kevin", block_id:2)
# caretaker3=Caretaker.create(name: "Jalango", block_id:3)
# caretaker4=Caretaker.create(name: "Oluoch", block_id:2)

# # appointment dummy 
# appointment1=Appointment.create(client_id: 1, caretaker_id: 4, apartment_id: 2)
# appointment2=Appointment.create(client_id: 3, caretaker_id: 1, apartment_id: 1)
# appointment3=Appointment.create(client_id: 3, caretaker_id: 2, apartment_id: 3)

puts "✅ Done seeding!"
