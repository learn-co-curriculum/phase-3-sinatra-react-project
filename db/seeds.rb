puts "Creating Movies . . ."
m1 = Movie.create(name: "", description: "", genre: "", string: "", movie_length: "", rating: "", esrb_rating: "")

puts "Beep Boop creating Users . . ."
u1 = User.create(login: "", password: "", profile_picture: "")

puts "Beep Boop creating Que . . ."
q1 = Que.create(movie_id: m1.id, user_id: u1.id)