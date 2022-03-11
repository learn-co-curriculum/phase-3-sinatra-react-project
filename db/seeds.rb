Build.destroy_all
Component.destroy_all
BuildComponent.destroy_all

puts "🌱 Seeding spices..."

# Seed your database here

# Builds
first_build = Build.create(name: "First Build", price: 1500)
gaming_build = Build.create(name: "Gaming Build", price: 2000)
school_computer = Build.create(name: "School Computer", price: 1200)
Build.create(name: "Brother's Build", price: 1800)
Build.create(name: "Advanced Build", price: 2500)

#components

steel_case = Component.create(name: "Steel case", component_type: "case", price: 100)
rgb_case = Component.create(name: "RGB case", component_type: "case", price: 250)
glass_case = Component.create(name: "Glass case", component_type: "case", price: 115)

Component.create(name: "AMD 5", component_type: "CPU", price: 300)
Component.create(name: "Intel 9", component_type: "CPU", price: 500)
Component.create(name: "AMD 7", component_type: "CPU", price: 350)

Component.create(name: "GeForce RTX 2060", component_type: "GPU", price: 600)
Component.create(name: "GeForce RTX 3070", component_type: "GPU", price: 750)
Component.create(name: "Radeon RX", component_type: "GPU", price: 550)

Component.create(name: "Asus", component_type: "motherboard", price: 125)
Component.create(name: "Gigabyte", component_type: "motherboard", price: 80)
Component.create(name: "KingSpec", component_type: "motherboard", price: 75)

Component.create(name: "CrossFire", component_type: "power-supply", price: 125)
Component.create(name: "GameMax", component_type: "power-supply", price: 175)
Component.create(name: "Rosewill", component_type: "power-supply", price: 115)

Component.create(name: "G.Skill", component_type: "memory", price: 110)
Component.create(name: "Corsair", component_type: "memory", price: 135)
Component.create(name: "Dataram", component_type: "memory", price: 120)

Component.create(name: "Samsung", component_type: "storage", price: 250)
Component.create(name: "Kingston", component_type: "storage", price: 200)
Component.create(name: "Firecuda", component_type: "storage", price: 175)


BuildComponent.create(build_id: first_build.id, component_id: steel_case.id)
BuildComponent.create(build_id: gaming_build.id, component_id: rgb_case.id)
BuildComponent.create(build_id: school_computer.id, component_id: glass_case.id)



puts "✅ Done seeding!"