puts "🌱 Seeding spices..."
puts "Deleting newsletter/customer/subscriber data"
Newsletter.destroy_all
Customer.destroy_all
Subscriber.destroy_all

# Seed your database here
puts "Creating newsletters..."
N1 = Newsletter.create(name:"Birthday Promo", frequency: "annually")
N2 = Newsletter.create(name:"Community Event", frequency: "monthly")
N3 = Newsletter.create(name:"Promotions & Sales", frequency: "weekly")
N4 = Newsletter.create(name:"Texts", frequency: "daily")


puts "Creating customers..."
C1 = Customer.create(name:"John Bane", email: "Jbane@outlook.com", phone:4452559874, birthday: Date.parse('1970-02-07'))
C2 = Customer.create(name:"Alexis Harris", email: "Hansd@gmail.com", phone:2452008002, birthday: Date.parse('1983-05-01'))
C3 = Customer.create(name:"Mark Noble", email: "b1entry@outlook.com", phone:6852470001, birthday: Date.parse('1988-10-05'))
C4 = Customer.create(name:"Viviane Hox", email: "Vivino@gmail.com", phone:2056828960, birthday: Date.parse('1990-09-01'))
C5 = Customer.create(name:"Sarah Jane", email: "chefJane@yahoo.com", phone:3010029888, birthday: Date.parse('1992-07-03'))
C6 = Customer.create(name:"Amy White", email: "Amy237@outlook.com", phone:2028527522, birthday: Date.parse('1986-04-11'))  
C7 = Customer.create(name:"Yoann Belvy", email: "Ybege34@yahoo.com", phone:3018529863, birthday: Date.parse('1975-11-08'))

puts "Creating subscribers..."
S1 = Subscriber.create(newsletter_id: N2.id, customer_id:C1.id )
S2 = Subscriber.create(newsletter_id: N1.id, customer_id:C3.id )
S3 = Subscriber.create(newsletter_id: N4.id, customer_id:C4.id )
S4 = Subscriber.create(newsletter_id: N3.id, customer_id:C2.id )



puts "✅ Done seeding!"
