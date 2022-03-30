puts "Seeding..."

teams = ["Software", "Marketing", "Finance"]

Company.create(name: "Flatiron")

teams.each do |team|
    Team.create(
        name: team,
        company_id: 1
    )
end

20.times do
    Employee.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        email_verified: false,
        picture: nil,
        company_id: 1,
        team_id: rand(1..3)
    )
end

3.times do
    Task.create(
        description: Faker::Lorem.sentence(word_count: 10),
        deadline: Faker::Date.forward(days: rand(7..14)),
        team_id: 1
    )
end

3.times do
    Task.create(
        description: Faker::Lorem.sentence(word_count: 10),
        deadline: Faker::Date.forward(days: rand(7..14)),
        team_id: 2
    )
end

3.times do
    Task.create(
        description: Faker::Lorem.sentence(word_count: 10),
        deadline: Faker::Date.forward(days: rand(7..14)),
        team_id: 3
    )
end

10.times do
    EmployeeTask.create(
        team_id: rand(1..3),
        employee_id: rand(1..20),
        task_id: rand(1..5)
    )
end

puts "Done seeding!"