puts "🌱 Seeding spices..."

Card.create(
    name: "Quack",
    card_type: "Attack",
    cost: 1,
    damage: 6,
    upgrade: 0
    )

Card.create(
    name: "Quack",
    card_type: "Attack",
    cost: 1,
    damage: 6,
    upgrade: 0
)

Character.create(
    name: "duck",
    max_HP: 100,
    current_HP: 100,
    max_energy: 3,
    current_energy: 3,
    shield: 0
)

puts "✅ Done seeding!"
