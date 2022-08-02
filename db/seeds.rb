puts "🌱 Seeding spices..."

# password = abc
u1 = User.create(username:"frank", password_hash:"$2a$12$HC204fX2PhviEhwdufWqNuBdf0FguLnAsQC.BaU.2stKVlJ/qxqX6", api_token: "abcfrank")
u2 = User.create(username:"sam", password_hash:"$2a$12$HC204fX2PhviEhwdufWqNuBdf0FguLnAsQC.BaU.2stKVlJ/qxqX6", api_token: "abcsam")
u3 = User.create(username:"tom", password_hash:"$2a$12$HC204fX2PhviEhwdufWqNuBdf0FguLnAsQC.BaU.2stKVlJ/qxqX6", api_token: "abctom")


c1 = Canvasboard.create(identifier:"firstcanvas", user_id:u2.id, canvas_name: "bestcanvas")

Canvaspath.create(canvasboard_id:c1.id, user_id:u2.id, data: '{"drawMode":true,"strokeColor":"red","strokeWidth":4,"paths":[{"x":113.890625,"y":201.54296875},{"x":113.890625,"y":202.01171875},{"x":113.890625,"y":202.94921875},{"x":114.203125,"y":203.88671875},{"x":114.203125,"y":204.12109375}]}', uuid: "canvas123")

puts "✅ Done seeding!"
