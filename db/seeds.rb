puts "Clearing db..."
Category.destroy_all
Day.destroy_all
Priority.destroy_all
RepeatedTask.destroy_all
Task.destroy_all

puts "🌱 Seeding tables..."

puts "Seeding categories..."
Category.create(name: "Focused work")
Category.create(name: "Being a human")
Category.create(name: "Outdoor activity")
Category.create(name: "Hobby")
Category.create(name: "Socializing")
Category.create(name: "Learning")
Category.create(name: "Physical activity")

puts "Seeding days..."
7.times do |i|
    d=Date.today+i
    Day.create(date: d, day_of_week: d.cwday, special_date: false)
end

puts "Seeding priorities..."
Priority.create(value: 1, description: "Urgent")
Priority.create(value: 2, description: "High")
Priority.create(value: 3, description: "Medium")
Priority.create(value: 4, description: "Low")
Priority.create(value: 5, description: "Optional")

puts "Seeding tasks..."


puts "✅ Done seeding!"
