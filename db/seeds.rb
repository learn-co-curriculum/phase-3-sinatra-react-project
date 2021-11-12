Application.destroy_all
Application.reset_pk_sequence
Communication.destroy_all
Communication.reset_pk_sequence
require 'date'



puts "🌱 Seeding spices..."

datetime = DateTime.new(2001,2,3,4,5,6)

# Seed your database here
app1 = Application.create(company: "Meta", position: "Software Enginner 2", status: "pending")
app2 = Application.create(company: "IBM", position: "Associate Software Enginner", status: "offer made")
app3 = Application.create(company: "Amazon", position: "Software Enginner", status: "rejected")
app4 = Application.create(company: "Microsoft", position: "Software Enginner", status: "interviewing")
app5 = Application.create(company: "Oracle", position: "React JS Developer", status: "pending")

Communication.create(time: datetime, received: false, comment: "have not heard back", application_id: app1.id)
Communication.create(time: datetime, received: true, comment: "offer received", application_id: app2.id)
Communication.create(time: datetime, received: true, comment: "rejected", application_id: app3.id)
Communication.create(time: datetime, received: true, comment: "Interview process", application_id: app4.id)

puts "✅ Done seeding!"
