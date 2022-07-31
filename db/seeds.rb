puts "🌱 Seeding spices..."

u1 = User.create(username:"frank", password:"abc", api_token: "abcfrank")
u2 = User.create(username:"sam", password:"abc", api_token: "abcsam")
u3 = User.create(username:"tom", password:"abc", api_token: "abctom")


c1 = Canvasboard.create(identifier:"firstcanvas", user_id:u2.id, canvas_name: "bestcanvas")

Canvaspath.create(canvasboard_id:c1.id, user_id:u2.id, data: '{"drawMode":true,"strokeColor":"red","strokeWidth":4,"paths":[{"x":113.890625,"y":201.54296875},{"x":113.890625,"y":202.01171875},{"x":113.890625,"y":202.94921875},{"x":114.203125,"y":203.88671875},{"x":114.203125,"y":204.12109375}]}', uuid: "canvas123")

puts "✅ Done seeding!"
