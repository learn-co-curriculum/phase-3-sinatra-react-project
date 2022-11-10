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
      company_name: "Youtube",
      photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUW0u5Eiiy3oM6wcpeEE6sXCzlh8G-tX1_Iw&usqp=CAU"
    },
    {
      name: "Glenda Kim",
      company_id:  Company.last.id,
      email: "glendakim@gmail.com",
      title: "freelancer ",
      phone: "8880009991",
      company_name: "Spotify",
      photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0g8R5VmgqDqpRCwQfw2Y9V-DM-iXS59R9hQ&usqp=CAU"
      
    },
    {
      name: "Vladeen Min",
      company_id: Company.second.id,
      email: "vladeen@gmail.com",
      title: "Electrician",
      phone: "9876546787",
      company_name: "Netflix",
      photo: "https://png.pngtree.com/png-clipart/20190922/original/pngtree-business-male-user-avatar-vector-png-image_4774078.jpg"
    },
    {
      name: "John Doe",
      company_id: Company.third.id,
      email: "johndoe@gmail.com",
      title: "Researcher",
      phone: "2345678",
      company_name: "Facebook",
      photo: "https://www.kindpng.com/picc/m/163-1636340_user-avatar-icon-avatar-transparent-user-icon-png.png"
    },
    {
      name: "Vladeen Min",
      company_id: Company.second.id,
      email: "vladeen@gmail.com",
      title: "Electrician",
      phone: "9876546787",
      company_name: "Twitter",
      photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0g8R5VmgqDqpRCwQfw2Y9V-DM-iXS59R9hQ&usqp=CAU"
    },
])



puts "✅ Done seeding!"
