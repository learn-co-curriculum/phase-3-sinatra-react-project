Tutor.destroy_all
Student.destroy_all
Appointment.destroy_all

puts "🌱 Seeding..."

puts "Creating tutors..."
t1 = Tutor.create(first_name: "Shree", last_name: "Panday", location: "MIA", subject: "SE")
t2 = Tutor.create(first_name: "Gehrig", last_name: "Barnes", location: "Philly", subject: "SE")
t3 = Tutor.create(first_name: "Taylor", last_name: "Tyler", location: "Virtual", subject: "SE")
t4 = Tutor.create(first_name: "Chris", last_name: "Erlendson", location: "Virtual", subject: "SE")

puts "Creating students..."
s1 = Student.create(first_name: "Dan", last_name: "Boley", age: rand(18..45), location: "CT", subject: "SE")
s2 = Student.create(first_name: "Sam", last_name: "Avery", age: rand(18..45), location: "IL", subject: "SE")
s3 = Student.create(first_name: "Tim", last_name: "Johnson", age: rand(18..45), location: "NY", subject: "SE")
s4 = Student.create(first_name: "Matt", last_name: "Matthews", age: rand(18..45), location: "NJ", subject: "SE")

puts "Creating appointments..."

a1 = Appointment.create(date: "11/01/2022", time: "10:00 AM", location: "Virtual", notes: "Focus on Ruby", tutor_id: rand(t1.id..t4.id), student_id: rand(s1.id..s4.id))
a2 = Appointment.create(date: "10/31/2022", time: "11:00 AM", location: "Virtual", notes: "Focus on React", tutor_id: rand(t1.id..t4.id), student_id: rand(s1.id..s4.id))
a3 = Appointment.create(date: "10/29/2022", time: "09:00 AM", location: "Virtual", notes: "Focus on JavaScript", tutor_id: rand(t1.id..t4.id), student_id: rand(s1.id..s4.id))
a4 = Appointment.create(date: "11/01/2022", time: "10:00 AM", location: "Virtual", notes: "Focus on Ruby", tutor_id: rand(t1.id..t4.id), student_id: rand(s1.id..s4.id))
a5 = Appointment.create(date: "11/02/2022", time: "12:00 PM", location: "Virtual", notes: "Focus on everything", tutor_id: rand(t1.id..t4.id), student_id: rand(s1.id..s4.id))
a6 = Appointment.create(date: "11/03/2022", time: "01:00 PM", location: "Virtual", notes: "Focus on Rails", tutor_id: rand(t1.id..t4.id), student_id: rand(s1.id..s4.id))
a7 = Appointment.create(date: "11/03/2022", time: "10:00 AM", location: "Virtual", notes: "Focus on Ruby", tutor_id: rand(t1.id..t4.id), student_id: rand(s1.id..s4.id))

puts "✅ Done seeding!"
