puts "Seeding yoga class poses"
Yoga_Class_Pose.destroy_all
Pose.destroy_all
Yoga_Class_Pose.destroy_all


puts "Seeding yoga classes"
Yoga_Class.create(teacher_name: "Melissa", class_name: "Slow Flow", class_time: "6:00 am")
Yoga_Class.create(teacher_name: "Jeff", class_name: "Power Vinyasa", class_time: "8:00 am")

puts "Seeding yoga poses"

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
  },
   {
    sanskrit_name: "Ustrasana",
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
  {
    sanskrit_name: "Adho Mukha Svanasana",
    english_name: "Downward-Facing Dog",
    img_url: "https://www.dropbox.com/s/75xa1bduu2u5y7d/downdog.svg?raw=1"
  },
  {
    sanskrit_name: "Garudasana",
    english_name: "Eagle",
    img_url: "https://www.dropbox.com/s/w05qgx7wyxva1y3/eagle.svg?raw=1"
  },
  {
  sanskrit_name: "Utthita Hasta Padangusthasana",
  english_name: "Extended Hand to Toe",
  img_url: "https://www.dropbox.com/s/0yk0z7f0a4ni37l/extendedhandtotoe.svg?raw=1"
  },
  {
    sanskrit_name: "Utthita Parsvakonasana",
    english_name: "Extended Side Angle",
    img_url: "https://www.dropbox.com/s/yzynxmyb9o7eras/extendedsideangle.svg?raw=1"
  },
  {
    sanskrit_name: "Pincha Mayurasana",
    english_name: "Forearm Stand",
    img_url: "https://www.dropbox.com/s/kjlyju4m91qgoi6/forearmstand.svg?raw=1"
  },
  {
    sanskrit_name: "Uttanasana",
    english_name: "Forward Bend with Shoulder Opener",
    img_url: "https://www.dropbox.com/s/sjqfq99pqpelv4v/forwardfoldshoulderstretch.svg?raw=1"
  },
  {
    sanskrit_name: "Ardha Chandrasana",
    english_name: "Half-Moon",
    img_url: "https://www.dropbox.com/s/gpumf9eehr8wo9g/halfmoon.svg?raw=1"
  },
  {
    sanskrit_name: "Adho Mukha Vrksasana",
    english_name: "Handstand",
    img_url: "https://www.dropbox.com/s/p7pf5j0untktn9c/handstand.svg?raw=1"
  },
  {
    sanskrit_name: "Anjaneyasana",
    english_name: "Low Lunge",
    img_url: "https://www.dropbox.com/s/h0ehjaz1wa9xfu1/lowlunge.svg?raw=1",
  },
  {
    sanskrit_name: "Supta Kapotasana",
    english_name: "Pigeon",
    img_url: "https://www.dropbox.com/s/77peru289zm446u/pigeon.svg?raw=1"
  },
  {
    sanskrit_name: "Eka Pada Rajakapotasana",
    english_name: "King Pigeon",
    img_url: "https://www.dropbox.com/s/10usd0gcqgy6o53/kingpigeon.svg?raw=1"
  },
  {
    sanskrit_name: "Phalakasana",
    english_name: "Plank",
    img_url: "https://www.dropbox.com/s/jg6ge8zpaltx10f/plank.svg?raw=1"
  },
  {
    sanskrit_name: "Halasana",
    english_name: "Plow",
    img_url: "https://www.dropbox.com/s/zi9231wbajm6d2m/plow.svg?raw=1"
  },
  {
    sanskrit_name: "Parsvottanasana",
    english_name: "Pyramid",
    img_url: "https://www.dropbox.com/s/j7p2600bmf840e0/pyramid.svg?raw=1"
  },
  {
    sanskrit_name: "Parsva Virabhadrasana",
    english_name: "Reverse Warrior",
    img_url: "https://www.dropbox.com/s/q6yn6cb9fglo0wp/reverswarrior.svg?raw=1"
  },
  {
    sanskrit_name: "Paschimottanasana",
    english_name: "Seated Forward Bend",
    img_url: "https://www.dropbox.com/s/ji0otecqx42by00/seatedforwardfold.svg?raw=1"
  },
  {sanskrit_name:"Paschimottanasana",
    english_name:"Seated Forward Bend",
    img_url:"https://www.dropbox.com/s/ji0otecqx42by00/seatedforwardfold.svg?raw=1"},
{sanskrit_name:"Padmasana",
    english_name:"Lotus",
    img_url:"https://www.dropbox.com/s/0oylivjwzuj5fnp/seatedORlotus.svg?raw=1"},
{sanskrit_name:"Ardha Matsyendrasana",
    english_name:"Half Lord of the Fishes",
    img_url:"https://www.dropbox.com/s/u9joi8lbntxumyh/seatedspinaltwist.svg?raw=1"},
{sanskrit_name:"Salamba Sarvangasana",
    english_name:"Shoulder Stand",
    img_url:"https://www.dropbox.com/s/tqj48exec3zub2u/shoulderstand.svg?raw=1"},
{sanskrit_name:"Vasisthasana",
    english_name:"Side Plank",
    img_url:"https://www.dropbox.com/s/w35ciia4u570xj8/sideplank.svg?raw=1"},
{sanskrit_name:"Salamba Bhujangasana",
    english_name:"Sphinx",
    img_url:"https://www.dropbox.com/s/cl8teqpf9yingwm/sphinx.svg?raw=1"},
{sanskrit_name:"Hanumanasana",
    english_name:"Splits",
    img_url:"https://www.dropbox.com/s/u8dxhc41hjfcxj6/splits.svg?raw=1"},
{sanskrit_name:"Malasana",
    english_name:"Squat",
    img_url:"https://www.dropbox.com/s/ntrwtdlr6tdkdxz/squat.svg?raw=1"},
{sanskrit_name:"Uttanasana",
    english_name:"Standing Forward Bend",
    img_url:"https://www.dropbox.com/s/u09snmhtposvaq0/standingforwardfold.svg?raw=1"},
{sanskrit_name:"Ashta Chandrasana",
    english_name:"Crescent Moon",
    img_url:"https://www.dropbox.com/s/9tv6z3qdcw2vg3a/standingstretch.svg?raw=1"},
{sanskrit_name:"Upavistha Konasana",
    english_name:"Side Splits",
    img_url:"https://www.dropbox.com/s/6z51vzosovhx5w7/straddlesplit.svg?raw=1"},
{sanskrit_name:"Vrksasana",
    english_name:"Tree",
    img_url:"https://www.dropbox.com/s/mn2ktlihp12mtfa/tree.svg?raw=1"},
{sanskrit_name:"Trikonasana",
    english_name:"Triangle",
    img_url:"https://www.dropbox.com/s/l41pfqjwmjoy5os/triangle.svg?raw=1"},
{sanskrit_name:"Urdhva Mukha Svsnssana",
    english_name:"Upward-Facing Dog",
    img_url:"https://www.dropbox.com/s/vnfx1srlwt1583t/updog.svg?raw=1"},
{sanskrit_name:"Virabhadrasana One",
    english_name:"Warrior One",
    img_url:"https://www.dropbox.com/s/j9fip5gm1o1l3fx/warrior1.svg?raw=1"},
{sanskrit_name:"Virabhadrasana Two",
    english_name:"Warrior Two",
    img_url:"https://www.dropbox.com/s/rsb3mx41dfq4otl/warrior2.svg?raw=1"},
{sanskrit_name:"Virabhadrasana Three",
    english_name:"Warrior Three",
    img_url:"https://www.dropbox.com/s/lwgoky3z37ameif/warrior3.svg?raw=1"},
{sanskrit_name:"Urdhva Dhanurasana",
    english_name:"Wheel",
    img_url:"https://www.dropbox.com/s/kpa1bewuut3lm5q/wheel.svg?raw=1"},
{sanskrit_name:"Camatkarasana",
    english_name:"Wild Thing",
    img_url:"https://www.dropbox.com/s/d1dbdvo4l7xry4w/downdogflip.svg?raw=1"}
  ])

  20.times do
  yoga_class = Yoga_Class.all.sample
  pose  = Pose.all.sample
Yoga_Class_Pose.create(yoga_class_id: yoga_class.id, pose_id: pose.id)
end
puts "✅ Done seeding!"
