puts "🌱 Seeding spices..."

# Seed your database here

game1 = GameInstance.create(winner:1,loser:3)
game2 = GameInstance.create(winner:4,loser:2)



ben =Player.create(player_name: "Ben", player_wins:1, player_losses:0,player_avatar:"https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/AsiaLocation.svg/1280px-AsiaLocation.svg.png" )
josh =Player.create(player_name: "Josh", player_wins:0, player_losses:1,player_avatar:"https://static.wikia.nocookie.net/drakeandjosh/images/e/ee/Character_large_332x363_josh.jpeg/revision/latest?cb=20150302211559" )
jui =Player.create(player_name: "Jui", player_wins:0, player_losses:1,player_avatar:"https://cdn.mos.cms.futurecdn.net/nLDqFXpa6q4UHVgWoEg2de-970-80.jpg.webp" )
tyler =Player.create(player_name: "Tyler", player_wins:1, player_losses:0,player_avatar:"" )


x1= X.create(player_id: ben.id ,game_instance_id:game1.id)
o1= O.create(player_id: jui.id, game_instance_id:game1.id)
x2= X.create(player_id: tyler.id, game_instance_id:game2.id)
o2= O.create(player_id: josh.id, game_instance_id:game2.id)



puts "✅ Done seeding!"
