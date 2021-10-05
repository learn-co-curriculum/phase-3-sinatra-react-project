puts "🌱 Seeding spices..."

puts "Creating tutors"
erica = Tutor.create(name: "Erica R.", location: "Pasadena, CA", subjects: "Math, Chemistry, Physics", rate: 50, online_in_person: "both", gender: "female", bio: "Hi, my name is Erica and I love tutoring! I have been working with students for 5+ years and specialize in math and sciences.", availability: "Mon-Fri 4-8pm, Sat/Sun anytime", background_check: true, timezone: "PST", username: "ericarojo", password: "FlatironErica89", img: "https://media-exp1.licdn.com/dms/image/C5603AQEAX-IiMbUfew/profile-displayphoto-shrink_800_800/0/1624152134432?e=1639008000&v=beta&t=uvSlPne-6Gc31MUixM5w05Du8z21GT4I_DmqFTCV3g8")
melissa = Tutor.create(name: "Melissa F.", location: "San Francisco, CA", subjects: "English, History", rate: 45, online_in_person: "online", gender: "female", bio: "Hello! My name is Melissa and I have been tutoring students in English and History since 2010. I really enjoy seeing my students make connections and having a-ha moments.", availability: "Mon/Tues/Wed 3-7pm", background_check: true, timezone: "PST", username: "melissafunk", password: "FlatironMelissa85", img: "https://media-exp1.licdn.com/dms/image/C5603AQEHPpjMofG65A/profile-displayphoto-shrink_800_800/0/1517519609733?e=1639008000&v=beta&t=LKTdSk2oyipd09-W7gjiNa0NTvnVfz_i2ynTCrBRvHk")
joe = Tutor.create(name: "Joe O.", location: "Denver, CO", subjects: "Computer Science", rate: 55, online_in_person: "in-person", gender: "male", bio: "Hi students! My name is Joe and I love spreading my passion for computer science and coding. I specialize in CSS, HTML, JavaScript, Ruby, and React.", availability: "Mon-Fri 2-9pm, Saturdays", background_check: true, timezone: "MST", username: "joeorekhov", password: "FlatironJoe99", img: "https://media-exp1.licdn.com/dms/image/C5603AQFINsmKpKFD6g/profile-displayphoto-shrink_800_800/0/1631934629310?e=1639008000&v=beta&t=W_uuigABfZbY2k5zMTn7MGnYbhLuvprgCN8q-lcoTdA")
shawna = Tutor.create(name: "Shawna A.", location: "Las Vegas, NV", subjects: "English, Math, History, Science", rate: 45, online_in_person: "online", gender: "female", bio: "Hi, I’m Shawna and I have been tutoring for 10 year. I love working with in grades K-8 in various subjects and like to make meaningful relationships with my students.", availability: "Tues/Wed/Thurs 4-8pm, Sundays anytime", background_check: true, timezone: "PST", username: "shawnaakiona", password: "FlatironShawna82", img: "https://media-exp1.licdn.com/dms/image/C4E03AQFUEtJUn09vEQ/profile-displayphoto-shrink_800_800/0/1627937623846?e=1639008000&v=beta&t=4x22jZF4Z4d4GrVI9QklyyC_4FDCii035G5IyIvpuYE")

puts "Creating students"
student1 = Student.create(name: "Kyle", grade: "Sixth", age: 11, timezone: "Mountain Time", username: "Tony_Hawk35", password: "Booger", img: "https://upload.wikimedia.org/wikipedia/commons/7/79/Tony_Hawk_2016_%28cropped%29.jpg")
student2 = Student.create(name: "DeAndre", grade: "Eigth", age: 13, timezone: "Mountain Time", username: "TheAndre", password: "CakePop", img: "https://i.pinimg.com/originals/fc/77/e1/fc77e1d5635ce3f13b9721d1c1a83fae.jpg")
student3 = Student.create(name: "Nadia", grade: "Third", age: 8, timezone: "Mountain Time", username: "NadiaOrgova", password: "StarShip", img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzXAWIDaugwqdK7ClrNYRXPuviiL_xuaTU3w&usqp=CAU")
student4 = Student.create(name: "Fiona", grade: "Freshman College", age: 19, timezone: "Mountain Time", username: "StrawBerry", password: "ShortCake", img: "http://www.nationalhealthexecutive.com/write/MediaUploads/averil.jpg")

puts "Creating matches"
# Seed your database here
m1 = Match.create(student_id:1, tutor_id:1, subject: "Math", schedule:"Monday @ 1p", online_in_person: "in-person", location: "Pasadena,CA", matched:false)
m2 = Match.create(student_id:2, tutor_id:2, subject: "English", schedule: "Wednesday @ 3p", online_in_person: "online", location: "www.zoom.com", matched:false)
m3 = Match.create(student_id:3, tutor_id:3, subject: "Computer Science", schedule: "Saturday @ 10a", online_in_person: "in-person", location: "San Fracisco, CA", matched:false)
m4 = Match.create(student_id:4, tutor_id:4, subject: "History", schedule:"Thursday @ 2p", online_in_person:"online", location: "www.zoom.com", matched:false)



puts "✅ Done seeding!"
