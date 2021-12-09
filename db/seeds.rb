require 'faker'
User.destroy_all
Post.destroy_all


puts "🌱 Seeding spices..."

20.times {
    User.create({
        name: Faker::Name.name,
        username: Faker::Name.first_name.delete(' ')+rand(1..1000).to_s,
        email: Faker::Internet.email,
        password: Faker::Alphanumeric.alpha(number: 6),
        github: 'https://github.com/landonskinner/phase-3-sinatra-react-project',
        linkedin: 'https://www.linkedin.com/in/landon-skinner/',
        image_url: 'https://thepowerofthedream.org/wp-content/uploads/2015/09/generic-profile-picture.jpg',
        bio: Faker::Quote.yoda
        })
}

100.times {
    Post.create({
        header: Faker::Verb.base,
        description: Faker::ProgrammingLanguage.name,
        image_url: 'https://media.istockphoto.com/photos/programming-code-abstract-technology-background-of-software-developer-picture-id1224500457?b=1&k=20&m=1224500457&s=170667a&w=0&h=OOPEMFamnZo63_2t_W40mYSfU1WrFAHHZRBgNN-GSgI=',
        content_link: 'https://learning.flatironschool.com/courses/4543/assignments/157705?module_item_id=336041',
        like_count: rand(1..100),
        user_id: User.all.sample.id
    })
}

100.times {
    Favorite.create({
        post_id: Post.all.sample.id,
        user_id: User.all.sample.id
    })
}


puts "✅ Done seeding!"
