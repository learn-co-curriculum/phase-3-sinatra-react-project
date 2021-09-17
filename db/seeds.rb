puts "Deleting old data..."
Card.destroy_all
Character.destroy_all

puts "🌱 Seeding spices..."

card_attack = Card.create(
    subset: "player_all",
    name: "Attack",
    card_type: "attack",
    cost: 1,
    damage: 6,
    shield: 0,
    heal: 0,
    upgrade: 0
)

card_attack = Card.create(
    subset: "player_all",
    name: "Smash",
    card_type: "attack",
    cost: 2,
    damage: 14,
    shield: 0,
    heal: 0,
    upgrade: 0
)

card_defense = Card.create(
    subset: "player_all",
    name: "Defense",
    card_type: "skill",
    cost: 1,
    damage: 0,
    shield: 4,
    heal: 0,
    upgrade: 0
)
card_defense = Card.create(
    subset: "player_all",
    name: "Protection",
    card_type: "skill",
    cost: 2,
    damage: 0,
    shield: 10,
    heal: 0,
    upgrade: 0
)

card_heal = Card.create(
    subset: "player_all",
    name: "Heal",
    card_type: "skill",
    cost: 1,
    damage: 0,
    shield: 0,
    heal: 2,
    upgrade: 0
)

card_super_heal = Card.create(
    subset: "player_all",
    name: "Super Heal",
    card_type: "skill",
    cost: 2,
    damage: 0,
    shield: 0,
    heal: 5,
    upgrade: 0
)

player = Character.create(
    name: "Player01",
    max_HP: 30,
    current_HP: 30,
    max_energy: 3,
    current_energy: 3,
    shield: 0
)

enemy1 = Character.create(
    name: "Enemy01",
    max_HP: 40,
    current_HP: 40,
    max_energy: 3,
    current_energy: 3,
    shield: 0
)

# puts Card.all

# card_attack.play(player, enemy1)
# puts "Player's HP = #{player.current_HP} / #{player.max_HP}"
# puts "Enemy's HP = #{enemy1.current_HP} / #{enemy1.max_HP}"

puts "✅ Done seeding!"
