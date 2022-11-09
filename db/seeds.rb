Company.destroy_all
Contact.destroy_all
puts "🌱 Seeding spices..."

# Seed your database here
Company.create(name: "Youtube")
Company.create(name: "Spotify")
Company.create(name: "Youtube")
Company.create(name: "Netflix")

Contact.create([
    {
      name: "Brad Gibson",
      company_id: Company.first.id,
      email: "brad@gmail.com",
      title: "Content creator ",
      phone: "9876546787",
    },
    {
      name: "Glenda Kim",
      company_id:  Company.last.id,
      email: "glendakim@gmail.com",
      title: "freelancer ",
      phone: "8880009991",
      
    },
    {
      name: "Vladeen Min",
      company_id: Company.second.id,
      email: "vladeen@gmail.com",
      title: "Electrician",
      phone: "9876546787",
    },
    {
      name: "John Doe",
      company_id: Company.third.id,
      email: "johndoe@gmail.com",
      title: "Researcher",
      phone: "2345678",
    },
    {
      name: "Vladeen Min",
      company_id: Company.second.id,
      email: "vladeen@gmail.com",
      title: "Electrician",
      phone: "9876546787",
    },
])



puts "✅ Done seeding!"
