Application.destroy_all
Application.reset_pk_sequence
Communication.destroy_all
Communication.reset_pk_sequence
User.destroy_all
User.reset_pk_sequence
require 'date'



puts "🌱 Seeding spices..."

datetime = DateTime.new(2001,2,3,4,5,6)

User.add_user(username: 'kenny', password: 'password')
user1 = User.first 

# Seed your database here
app1 = Application.create(company: "Meta", position: "Software Enginner 2", status: "pending", user_id: user1.id, logo_url: "https://static.dezeen.com/uploads/2021/11/meta-facebook-rebranding-name-news_dezeen_2364_col_sq-213x213.jpg")
app2 = Application.create(company: "IBM", position: "Associate Software Enginner", status: "offer made", user_id: user1.id, logo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZlxf_-ydMMfjIV_gDe0-mkbOwmS9W8FWMxx5n76I6lNd_fh_F7dGWFPxihZYbZGYFSLI&usqp=CAU")
app3 = Application.create(company: "Amazon", position: "Software Enginner", status: "rejected", user_id: user1.id, logo_url: "https://www.freeiconspng.com/uploads/amazon-icon-6.png")
app4 = Application.create(company: "Microsoft", position: "Software Enginner", status: "interviewing", user_id: user1.id, logo_url: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/326fe159-1650-46ba-96c8-fa0267e7ce92/d4on7uq-3c21f4e8-8dd0-42eb-9d66-e2f9bdecc406.png/v1/fill/w_305,h_304,strp/windows_8_square_logo_by_darkmaster79_d4on7uq-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MzA0IiwicGF0aCI6IlwvZlwvMzI2ZmUxNTktMTY1MC00NmJhLTk2YzgtZmEwMjY3ZTdjZTkyXC9kNG9uN3VxLTNjMjFmNGU4LThkZDAtNDJlYi05ZDY2LWUyZjliZGVjYzQwNi5wbmciLCJ3aWR0aCI6Ijw9MzA1In1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.eyO-0Ym2-UDdBHPKWziQKK8eDFTVlMtm1ZSHCTHUlEo")
app5 = Application.create(company: "Oracle", position: "React JS Developer", status: "pending", user_id: user1.id, logo_url: "https://sybyl.com/wp-content/uploads/2019/11/Oracle-Logo-For-Website.png")

Communication.create(time: datetime, received: false, comment: "have not heard back", application_id: app1.id)
Communication.create(time: datetime, received: true, comment: "offer received", application_id: app2.id)
Communication.create(time: datetime, received: true, comment: "rejected", application_id: app3.id)
Communication.create(time: datetime, received: true, comment: "Interview process", application_id: app4.id)

puts "✅ Done seeding!"
