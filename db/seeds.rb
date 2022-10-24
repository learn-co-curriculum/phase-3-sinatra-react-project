puts "🌱 Seeding spices..."

t1 = Therapist.create(first_name: "Sarah", last_name: "Smith", licensure: "LPC", years_of_experience: 5)
t2 = Therapist.create(first_name: "Rick", last_name: "McNab", licensure: "LCSW", years_of_experience: 3)
t3 = Therapist.create(first_name: "John", last_name: "Sanchez", licensure: "PHD", years_of_experience: 10)
t4 = Therapist.create(first_name: "Rachel", last_name: "Green", licensure: "LPC", years_of_experience: 6)
t5 = Therapist.create(first_name: "Ryan", last_name: "Reynolds", licensure: "LMFT", years_of_experience: 4)
t6 = Therapist.create(first_name: "Ashley", last_name: "Brown", licensure: "LPC", years_of_experience: 5)

c1 = Client.create(first_name: "James", last_name: "Liu", therapist_id: t1.id)
c1 = Client.create(first_name: "Kim", last_name: "Rodrig", therapist_id: t2.id)
c1 = Client.create(first_name: "Zach", last_name: "Youngdale", therapist_id: t3.id)
c1 = Client.create(first_name: "Sam", last_name: "Avery", therapist_id: t4.id)
c1 = Client.create(first_name: "Seth", last_name: "Brendle", therapist_id: t5.id)
c1 = Client.create(first_name: "Tyler", last_name: "Hall", therapist_id: t6.id)
c1 = Client.create(first_name: "Brianna", last_name: "Brewster", therapist_id: t1.id)
c1 = Client.create(first_name: "Gehrig", last_name: "Barnes", therapist_id: t3.id)
c1 = Client.create(first_name: "Chloe", last_name: "Scheffler", therapist_id: t6.id)
c1 = Client.create(first_name: "Daniel", last_name: "Boley", therapist_id: t2.id)
c1 = Client.create(first_name: "Emily", last_name: "Fernschild", therapist_id: t3.id)
c1 = Client.create(first_name: "Lucy", last_name: "Tittle", therapist_id: t5.id)
c1 = Client.create(first_name: "Nico", last_name: "Garbaccio", therapist_id: t1.id)
c1 = Client.create(first_name: "Paul", last_name: "Yang", therapist_id: t2.id)
c1 = Client.create(first_name: "Peter", last_name: "Kenz", therapist_id: t6.id)
c1 = Client.create(first_name: "Tristen", last_name: "Hammon", therapist_id: t3.id)
c1 = Client.create(first_name: "Gian Carlo", last_name: "De Castro", therapist_id: t2.id)

puts "✅ Done seeding!"
