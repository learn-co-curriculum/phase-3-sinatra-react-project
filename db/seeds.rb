puts "🌱 Seeding spices..."

User.destroy_all
Category.destroy_all
Remember.destroy_all


# Seed your database here

u1 = User.create(name: "Dan Magers", classroom: 1)

c1 = Category.create(name: 'covid')
c2 = Category.create(name: 'jobs')
c3 = Category.create(name: 'school')
c4 = Category.create(name: 'newyork')


r1 = Remember.create(user_id: u1.id, category_id: c3.id, remember: "I remember in high school that people called Josh Hawley, who was a year ahead of me, Senator Hawley.")
r2 = Remember.create(user_id: u1.id, category_id: c4.id, remember: "I remember passing Claire Danes who gave me up-and-down look in front of Alex Smith's buidling on 12th Street in Manhattan.")
r3 = Remember.create(user_id: u1.id, category_id: c1.id, remember: "I remember being too depressed during the first April of covid that I couldn't write at all.")
r4 = Remember.create(user_id: u1.id, category_id: c1.id, remember: "I remember DONT TOUCH ANY SURFACE.")
r5 = Remember.create(user_id: u1.id, category_id: c2.id, remember: "I remember seeing US Airways Flight 1549 submerged in the Hudson River from the window of my office building and thinking everyone was dead.")
r6 = Remember.create(user_id: u1.id, category_id: c4.id, remember: "I remember being unemployed, reading Shakespeare for six months after my MFA program.")
r7 = Remember.create(user_id: u1.id, category_id: c1.id, remember: "I remember reading Shakesspeare during the first months of covid lockdown.")
r8 = Remember.create(user_id: u1.id, category_id: c4.id, remember: "I remember seeing my apartment in a meme on instagram.")
r9 = Remember.create(user_id: u1.id, category_id: c4.id, remember: "I remember Mellow Pages Library in Bushwick Brooklyn.")
r10 = Remember.create(user_id: u1.id, category_id: c2.id, remember: "I remember I don't know was the wrong answer when I was a stockboy at Kmart.")
r11 = Remember.create(user_id: u1.id, category_id: c2.id, remember: "I remember getting paid $4.65 an hour (minimum wage) at my first job (shelving books at the library.")


puts "✅ Done seeding!"
