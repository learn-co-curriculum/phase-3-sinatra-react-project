Pose.destroy_all
Yoga_Class.destroy_all
Yoga_Class_Poses.destroy_all

puts "🌱 Seeding spices..."

# Seed your database here

Pose.create([
  {
    sanskrit_name: "Navasana",
    english_name: "Boat",
    img_url: "https://www.dropbox.com/s/4m64ztxkj8a4dab/boatstraightlegs.svg?raw=1"
  },
  {
    sanskrit_name: "Ardha Navasana",
    english_name: "Half-Boat",
    img_url: "https://www.dropbox.com/s/1nx0r94msxjwvyp/boatbentlegs.svg?raw=1"
  },
  {
    sanskrit_name: "Dhanurasana",
    english_name: "Bow",
    img_url: "https://www.dropbox.com/s/wizj5kwxvez4c0a/bow.svg?raw=1"
  },
  {
    sanskrit_name: "Setu Bandha Sarvangasana",
    english_name: "Bridge",
    img_url: "https://www.dropbox.com/s/f1w64ybg4sn8ejt/bridge.svg?raw=1"
  },
  {
    sanskrit_name: "Baddha Konasana",
    english_name: "Butterfly",
    img_url: "https://www.dropbox.com/s/3h2pts6xbn28dh7/butterfly%3F.svg?raw=1"
  }
   {
    sanskrit_name: "Ustrasana"
    english_name: "Camel",
    img_url: "https://www.dropbox.com/s/o5gr4lngltsdg5r/camel.svg?raw=1"
  },
  {
    sanskrit_name: "Marjaryasana",
    english_name: "Cat",
    img_url: "https://www.dropbox.com/s/cginnz98of2jpgr/cat.svg?raw=1"
  },
  {
    sanskrit_name: "Bitilasana",
    english_name: "Cow",
    img_url: "https://www.dropbox.com/s/neau4ceai1rskh6/cow.svg?raw=1"
  },
   {
    sanskrit_name: "Utkatasana",
    english_name: "Chair",
    img_url: "https://www.dropbox.com/s/9emlawz8vayk8bm/chair.svg?raw=1"
  },
  {
    sanskrit_name: "Balasana",
    english_name: "Child's Pose",
    img_url: "https://www.dropbox.com/s/ini3uwali0q5gxa/child.svg?raw=1"
  },
  {
    sanskrit_name: "Sivasana",
    english_name: "Corpse",
    img_url: "https://www.dropbox.com/s/eohyx2crvtjvaxb/sivasana.svg?raw=1"
  },
   {
    sanskrit_name: "Alanasana",
    english_name: "Crescent Lunge",
    img_url: "https://www.dropbox.com/s/1oc1dqv8mfwo8uj/highlunge.svg?raw=1"
  },
  {
    sanskrit_name: "Bakasana",
    english_name: "Crow",
    img_url: "https://www.dropbox.com/s/ukaxoioh0uooswj/crow.svg?raw=1"
  },
  {
    sanskrit_name: "Ardha Pincha Mayurasana",
    english_name: "Dolphin",
    img_url: "https://www.dropbox.com/s/px1foombb3v24se/dolphin.svg?raw=1"
  },
  {
    sanskrit_name: "Adho Mukha Svanasana",
    english_name: "Downward-Facing Dog",
    img_url: "https://www.dropbox.com/s/75xa1bduu2u5y7d/downdog.svg?raw=1"
  },
  
])

puts "✅ Done seeding!"
