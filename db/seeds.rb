Expense.destroy_all
User.destroy_all
Income.destroy_all

puts "🌱 Seeding spices..."

# Seed your database here

User.create(
    name: "Vladimir Biden"
)

User.create(
    name: "Donald Obama"
)

Expense.create(
    description: "1st Mortgage",
    monthly: 1000,
    annual: 12000,
    frequency: "monthly",
    due_date: "April 1, 2022",
    notes: "Florida home",
    user_id: User.all.sample
)

Expense.create(
    description: "2st Mortgage",
    monthly: 1200,
    annual: 14400,
    frequency: "monthly",
    due_date: "April 1, 2022",
    notes: "Texas home",
    user_id: User.all.sample
)

Expense.create(
    description: "Lambo",
    monthly: 7000,
    annual: 84000,
    frequency: "monthly",
    due_date: "April 1, 2022",
    notes: "New Lambo",
    user_id: User.all.sample
)

Income.create(
    description: "React contract",
    amount: 50000,
    user_id: User.all.sample
)

Income.create(
    description: "Web design",
    amount: 2500,
    user_id: User.all.sample
)



puts "✅ Done seeding!"
