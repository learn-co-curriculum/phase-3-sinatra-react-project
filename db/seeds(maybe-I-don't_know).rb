Weapon.destroy_all
Spell.destroy_all

puts "🌱 Seeding spices..."

# Seed your database here
#Weapons & spells: 30 each
puts "seeding spells..."

s1 = Spell.create(spell_name: "acid splash",spell_description: "Throw acid on someone, like a hero.")
s2 = Spell.create(spell_name: "aganazar's scorcher",spell_description: "Throw a fireball 30 ft.")
s3 = Spell.create(spell_name: "air bubble",spell_description: "Air for when there is none.")
s4 = Spell.create(spell_name: "animate dead",spell_description: "Brings dead back to life")
s5 = Spell.create(spell_name: "arcaine gate",spell_description: "Teleport 500ft, Rick and Mory style.")
s6 = Spell.create(spell_name: "barkskin",spell_description: "Hardens skin like treebark.")
s7 = Spell.create(spell_name: "call lightning",spell_description: "Call down lightning, like Thor.")
s8 = Spell.create(spell_name: "catapult",spell_description: "Throw object 30ft through the air.")
s9 = Spell.create(spell_name: "comprehend languages",spell_description: "Learn to speak any language.")
s10 = Spell.create(spell_name: "control water",spell_description: "Waterbending.")
s11 = Spell.create(spell_name: "control fire",spell_description: "Arson on demand.")
s12 = Spell.create(spell_name: "create spelljamming",spell_description: "Block someones spell.")
s13 = Spell.create(spell_name: "fortune's favor",spell_description: "Increase your luck.")
s14 = Spell.create(spell_name: "Frostbite",spell_description: "Freeze your enemy, like Mr. Freeze.")
s15 = Spell.create(spell_name: "illusory dragon",spell_description: "Make an illusion of a dragon. Able to spit acid.")
s16 = Spell.create(spell_name: "insect plague",spell_description: "Summon a plague of insects.")
s17 = Spell.create(spell_name: "levitate",spell_description: "Float in the air like David Blain.")
s18 = Spell.create(spell_name: "invisibility",spell_description: "Make something invisible.")
s19 = Spell.create(spell_name: "timestop",spell_description: "Pause time.")
s20 = Spell.create(spell_name: "zone of truth",spell_description: "Cast area effect that prevents lying.")

puts "seeding Weapons..."

w1 = Weapon.create(weapon_name: "club",weapon_description: "Short range stick for light bludgeoning.")
w2 = Weapon.create(weapon_name: "dagger",weapon_description: "Small sharp knife for stabbery. Can be thrown short distance.")
w3 = Weapon.create(weapon_name: "hand-axe",weapon_description: "Hatchet to kill enemies by slashing.")
w4 = Weapon.create(weapon_name: "javelin",weapon_description: "Spear for throwing.")
w5 = Weapon.create(weapon_name: "quarterstaff",weapon_description: "It's a cane.")
w6 = Weapon.create(weapon_name: "sickle",weapon_description: "Short curved blade. Famous as farm tool and simbol of communism. ")
w7 = Weapon.create(weapon_name: "spear",weapon_description: "Javelin for stabbing. Best with two hands.")
w8 = Weapon.create(weapon_name: "club",weapon_description: "Short range stick for bludgeoning")
w9 = Weapon.create(weapon_name: "light-crossbow",weapon_description: "Pistol, but for bow and arrow. Onehanded tool that shoots bolts for light damage.")
w10 = Weapon.create(weapon_name: "short-bow",weapon_description: "Shoots an arrow to kill from a distance for medium damage. Like a gun, but less cool.")
w11 = Weapon.create(weapon_name: "heavy-crossbow",weapon_description: "Like light-crossbow, but deals heavy damage and needs two hands. Ye olde machine-gun.")
w12 = Weapon.create(weapon_name: "dart",weapon_description: "Small pointy stick, thrown one-haded with finess. Could be mild inconvenience, or adult toy in a bar.")
w13 = Weapon.create(weapon_name: "glave",weapon_description: "Long bladed, two-handed weapon composed of large blade on a long stick. Like a spear for slashing.")
w14 = Weapon.create(weapon_name: "greataxe",weapon_description: "Axe... but great! Two-handed except one.")
w15 = Weapon.create(weapon_name: "greatsword",weapon_description: "Large, two-handed blade for slashing.")
w16 = Weapon.create(weapon_name: "longsword",weapon_description: "Long sword swung two-handed.")
w17 = Weapon.create(weapon_name: "short-sword",weapon_description: "short blade for slashing with one hand, or stabbing.")
w18 = Weapon.create(weapon_name: "whip",weapon_description: "Rope with scourge on the end. Swung one-handed. Great for tresure hunting, or just killing Dracula.")
w19 = Weapon.create(weapon_name: "long-bow",weapon_description: "Shoots arrow, two-handed, long range.")
w20 = Weapon.create(weapon_name: "net",weapon_description: "light rope, sewn together criss-crossed. Thrown onto enemy to catch.")

puts "✅ Done seeding!"

#https://github.com/5e-bits/5e-database/blob/main/src/5e-SRD-Equipment.json
# +1 954-727-6361 for sheena ICOE