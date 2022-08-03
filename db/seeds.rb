puts "🌱 Seeding spices..."

# password = abc
u1 = User.create(username:"frank", password_hash:"$2a$12$HC204fX2PhviEhwdufWqNuBdf0FguLnAsQC.BaU.2stKVlJ/qxqX6", api_token: "abcfrank")
u2 = User.create(username:"sam", password_hash:"$2a$12$HC204fX2PhviEhwdufWqNuBdf0FguLnAsQC.BaU.2stKVlJ/qxqX6", api_token: "abcsam")
u3 = User.create(username:"tom", password_hash:"$2a$12$HC204fX2PhviEhwdufWqNuBdf0FguLnAsQC.BaU.2stKVlJ/qxqX6", api_token: "abctom")


c1 = Canvasboard.create(identifier:"firstcanvas", canvas_name: "bestcanvas")
c2 = Canvasboard.create(identifier:"secondcanvas", canvas_name: "supercanvas")
c3 = Canvasboard.create(identifier:"thirdcanvas", canvas_name: "coolcanvas")

Canvaspath.create(canvasboard_id:c1.id, user_id:u2.id, data: '{"drawMode":true,"strokeColor":"red","strokeWidth":4,"paths":[{"x":113.890625,"y":201.54296875},{"x":113.890625,"y":202.01171875},{"x":113.890625,"y":202.94921875},{"x":114.203125,"y":203.88671875},{"x":114.203125,"y":204.12109375}]}', uuid: "canvas123")



collab1 = Collaboration.create(user: u1, canvasboard: c1)
collab2 = Collaboration.create(user: u1, canvasboard: c2)
collab3 = Collaboration.create(user: u2, canvasboard: c2)
collab4 = Collaboration.create(user: u3, canvasboard: c1)
collab5 = Collaboration.create(user: u3, canvasboard: c3)
collab6 = Collaboration.create(user: u2, canvasboard: c3)
collab7 = Collaboration.create(user: u1, canvasboard: c3)

puts "✅ Done seeding!"
