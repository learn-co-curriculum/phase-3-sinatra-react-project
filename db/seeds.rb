puts "🌱 Seeding spices..."

# Seed your database here

game1 = GameInstance.create(winner:1,loser:3)
game2 = GameInstance.create(winner:4,loser:2)





ben =Player.create(game_instance_id:game1.id, player_name: "Ben", player_wins:2, player_losses:2,player_avatar:"https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/AsiaLocation.svg/1280px-AsiaLocation.svg.png" )
josh =Player.create(game_instance_id:game2.id ,          player_name: "Josh", player_wins:3, player_losses:4,player_avatar:"https://static.wikia.nocookie.net/drakeandjosh/images/e/ee/Character_large_332x363_josh.jpeg/revision/latest?cb=20150302211559" )
hui =Player.create(game_instance_id:game1.id , player_name: "Jui", player_wins:1, player_losses:3,player_avatar:"https://cdn.mos.cms.futurecdn.net/nLDqFXpa6q4UHVgWoEg2de-970-80.jpg.webp" )
tyler =Player.create(game_instance_id:game2.id ,    player_name: "Tyler", player_wins:20, player_losses:0,player_avatar:"" )






puts "✅ Done seeding!"
