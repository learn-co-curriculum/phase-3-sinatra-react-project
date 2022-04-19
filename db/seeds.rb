require 'faker'

Age.destroy_all
Best.destroy_all
Book.destroy_all

puts "🌱 Seeding ..."
puts "Creating age range..."

a1 = Age.create(age_range:1)
a2 = Age.create(age_range:2)
a3 = Age.create(age_range:3)
a4 = Age.create(age_range:4)
a5 = Age.create(age_range:5)
a6 = Age.create(age_range:6)
a7 = Age.create(age_range:7)
a8 = Age.create(age_range:8)
a9 = Age.create(age_range:9)
a10 = Age.create(age_range:10)

puts "Creating best_sellers..."
bs1 = Best.create(title: "New York Times BestSeller List")
bs2 = Best.create(title: "Oprah List")

puts "Creating books..."
b1 = Book.create(title:"Unicorn Coloring Book For Kids", author:"Silly Bear" , genre: Faker::Book.genre, age_range: a6.id, rating: 1, link: "https://www.amazon.com/Unicorn-Coloring-Book-Kids-Ages/dp/1999896963/ref=sr_1_93?dch[…]&qid=1611149061&refinements=p_72%3A1250221011&s=books&sr=1-93", photo: "https://images-na.ssl-images-amazon.com/images/I/6130Hw3f5eL._SX218_BO1,204,203,200_QL40_FMwebp_.jpg", best_seller: bs1.id)

b2 = Book.create(title: "Learn to Write Letters and Numbers Workbook", author: "Sujatha Lalgudi", genre: Faker::Book.genre, age_range: a10.id, rating: 5, link: "https://www.amazon.com/Learn-Write-Letters-Numbers-Workbook/dp/1777421101/ref=sr_1_1[…]id=1611149061&refinements=p_72%3A1250221011&s=books&sr=1-1189" , photo: "https://images-na.ssl-images-amazon.com/images/I/514ni4dZHvL._SX218_BO1,204,203,200_QL40_FMwebp_.jpg", best_seller: bs1.id)

b3 = Book.create(title: "Kindness is my Superpower A childrens Book About Empathy Kindness and Compassion", author: "Alicia Ortego", genre: Faker::Book.genre, age_range: a5.id , rating: 4, link: "https://www.amazon.com/Kindness-Superpower-childrens-Empathy-Compassion/dp/B08DSTHKQ[…]qid=1611149061&refinements=p_72%3A1250221011&s=books&sr=1-620", photo: "https://m.media-amazon.com/images/I/51xtD0gPz+L._SX260_.jpg", best_seller: bs2.id)

b4 = Book.create(title: "I Am Stronger Than Anger Picture Book About Anger Management And Dealing With Kids Emotions And Feelings (Preschool Feelings Book, Self-Regulation Skills)", author: "Elizabeth Cole", genre: Faker::Book.genre, age_range: a3.id, rating: 3, link: "https://www.amazon.com/Stronger-Than-Anger-Management-Self-Regulation/dp/B08GB36SBW/[…]id=1611149061&refinements=p_72%3A1250221011&s=books&sr=1-1043", photo: "https://m.media-amazon.com/images/I/51UZzYcFB4L._SX260_.jpg", best_seller: bs1.id)

b5 = Book.create(title: "123 things BIG & JUMBO Coloring Book: 123 Coloring Pages!!, Easy, LARGE, GIANT Simple Picture Coloring Books for Toddlers, Kids Ages 2-4, Early Learning, Preschool and Kindergarten", author: "Salmon Sally", genre: Faker::Book.genre, age_range: a1.id, rating: 4, link: "https://www.amazon.com/Kindergarten-writing-paper-lines-kids/dp/109770467X/ref=sr_1_[…]&qid=1611149061&refinements=p_72%3A1250221011&s=books&sr=1-98", photo: "https://images-na.ssl-images-amazon.com/images/I/515ASwucj4L._SX218_BO1,204,203,200_QL40_FMwebp_.jpg", best_seller: bs1.id)

b6 = Book.create(title: "Kindergarten writing paper with lines for ABC kids: 120 Blank handwriting practice paper with dotted lines", author: "Smith John", genre: Faker::Book.genre, age_range: a2.id, rating: 4, link: "https://www.amazon.com/Kindergarten-writing-paper-lines-kids/dp/109770467X/ref=sr_1_[…]&qid=1611149061&refinements=p_72%3A1250221011&s=books&sr=1-98", photo: "https://images-na.ssl-images-amazon.com/images/I/515ASwucj4L._SX218_BO1,204,203,200_QL40_FMwebp_.jpg", best_seller: bs2.id)

b7 = Book.create(title: "A Camping Spree with Mr. Magee: (Read Aloud Books, Series Books for Kids, Books for Early Readers) (Mr. McGee, MCGE)", author: "Chris Van Dusen", genre: Faker::Book.genre, age_range: a6.id, rating: 5, link: "https://www.amazon.com/Camping-Spree-Mr-Magee/dp/0811836037/ref=sr_1_989?dchild=1&pf[…]qid=1611149061&refinements=p_72%3A1250221011&s=books&sr=1-989", photo: "https://m.media-amazon.com/images/I/51k-UKt7e9L.jpg", best_seller: bs1.id)

b8 = Book.create(title: "Hush Little Baby: (Baby Board Books, Baby Books First Year, Board Books for Babies)", author: "Sylvia Long", genre: Faker::Book.genre, age_range: a1.id, rating: 3, link: "https://www.amazon.com/Hush-Little-Baby-Sylvia-Long/dp/0811822907/ref=sr_1_786?dchil[…]qid=1611149061&refinements=p_72%3A1250221011&s=books&sr=1-786", photo: "https://images-na.ssl-images-amazon.com/images/I/51Jb45fNWFL._SX218_BO1,204,203,200_QL40_FMwebp_.jpg", best_seller: bs1.id)

b9 = Book.create(title: "Indestructibles: Things That Go!: Chew Proof · Rip Proof · Nontoxic · 100% Washable (Book for Babies, Newborn Books, Vehicle Books, Safe to Chew)", author: "Stephan Lomp", genre: Faker::Book.genre, age_range: a1.id, rating: 4 , link: "https://www.amazon.com/Indestructibles-Things-That-Amy-Pixton/dp/0761193626/ref=sr_1[…]id=1611149061&refinements=p_72%3A1250221011&s=books&sr=1-1152", photo: "https://images-na.ssl-images-amazon.com/images/I/51Xup5DWxnL._SX218_BO1,204,203,200_QL40_FMwebp_.jpg", best_seller: bs2.id)


b10 = Book.create(title: "Peek-a Who? (Lift the Flap Books, Interactive Books for Kids, Interactive Read Aloud Books)", author:"Nina Laden", genre: Faker::Book.genre, age_range: a1.id, rating: 1, link: "https://www.amazon.com/Peek-Who-Nina-Laden/dp/0811826023/ref=sr_1_210?dchild=1&pf_rd_i=4&pf_rd_p=f92327d7-7b1b-5fb4-82be-5400739bec4f&pf_rd_r=DD6Z1HDJS8TPFG2MAF2E&pf_rd_s=merchandised-search-11&pf_rd_t=BROWSE&qid=1611149061&refinements=p_72%3A1250221011&s=books&sr=1-210", photo: "https://images-na.ssl-images-amazon.com/images/I/6130Hw3f5eL._SX218_BO1,204,203,200_QL40_FMwebp_.jpg")

b11 = Book.create(title: "Baby Touch and Feel I Love You", author:"DK", genre: Faker::Book.genre, age_range: a1.id , rating:3 , link: "https://www.amazon.com/Baby-Touch-Feel-Love-You/dp/1465457631/ref=sr_1_611?dchild=1&pf_rd_i=4&pf_rd_p=f92327d7-7b1b-5fb4-82be-5400739bec4f&pf_rd_r=DD6Z1HDJS8TPFG2MAF2E&pf_rd_s=merchandised-search-11&pf_rd_t=BROWSE&qid=1611149061&refinements=p_72%3A1250221011&s=books&sr=1-611", photo: "https://images-na.ssl-images-amazon.com/images/I/51eDVV6SlQL._SX218_BO1,204,203,200_QL40_FMwebp_.jpg")


b12 = Book.create(title: "The Very Hungry Caterpillar", author:"Eric Carle", genre: Faker::Book.genre, age_range: a4.id, rating: 2 , link: "https://www.amazon.com/Very-Hungry-Caterpillar-Eric-Carle/dp/0399226907/ref=sr_1_10?dchild=1&pf_rd_i=4&pf_rd_p=f92327d7-7b1b-5fb4-82be-5400739bec4f&pf_rd_r=DD6Z1HDJS8TPFG2MAF2E&pf_rd_s=merchandised-search-11&pf_rd_t=BROWSE&qid=1610894281&refinements=p_72%3A1250221011&s=books&sr=1-10", photo: "https://images-na.ssl-images-amazon.com/images/I/41w4B0f21VL._SX218_BO1,204,203,200_QL40_FMwebp_.jpg")

b13 = Book.create(title: "Potty Time! (Daniel Tiger's Neighborhood) (Daniel Tiger's Neighborhood Interactive Take-Along Children's Sound Book)", author:"Cottage Door Press", genre: Faker::Book.genre, age_range: a3.id , rating: 2, link: "https://www.amazon.com/Potty-Time-Daniel-Tiger-Scarlett/dp/1680524933/ref=sr_1_42?dchild=1&pf_rd_i=4&pf_rd_p=f92327d7-7b1b-5fb4-82be-5400739bec4f&pf_rd_r=DD6Z1HDJS8TPFG2MAF2E&pf_rd_s=merchandised-search-11&pf_rd_t=BROWSE&qid=1611149061&refinements=p_72%3A1250221011&s=books&sr=1-42", photo: "https://images-na.ssl-images-amazon.com/images/I/51hXuYqiIPL._SY498_BO1,204,203,200_.jpg")


b14 = Book.create(title: "The Mitten", author:"Jan Brett", genre: Faker::Book.genre, age_range: a3.id, rating: 3, link: "https://www.amazon.com/Mitten-Jan-Brett/dp/0399231099/ref=sr_1_253?dchild=1&pf_rd_i=4&pf_rd_p=f92327d7-7b1b-5fb4-82be-5400739bec4f&pf_rd_r=DD6Z1HDJS8TPFG2MAF2E&pf_rd_s=merchandised-search-11&pf_rd_t=BROWSE&qid=1611149061&refinements=p_72%3A1250221011&s=books&sr=1-253" ,photo: "https://m.media-amazon.com/images/I/514Jh6-qckL._SX260_.jpg")


b15 = Book.create(title: "Chicka Chicka Boom Boom", author:"John Archambault", genre: Faker::Book.genre, age_range: a2.id, rating: 3, link: "https://www.amazon.com/Chicka-Boom-Board-Book/dp/1442450703/ref=sr_1_46?dchild=1&pf_rd_i=4&pf_rd_p=f92327d7-7b1b-5fb4-82be-5400739bec4f&pf_rd_r=DD6Z1HDJS8TPFG2MAF2E&pf_rd_s=merchandised-search-11&pf_rd_t=BROWSE&qid=1611149061&refinements=p_72%3A1250221011&s=books&sr=1-46", photo: "https://m.media-amazon.com/images/I/51tbUXDIgRL._SX260_.jpg")

b16 = Book.create(title: "The Giving Tree", author:"Shel Silverstein", genre: Faker::Book.genre, age_range: a4.id , rating: 4, link: "https://www.amazon.com/Giving-Tree-Shel-Silverstein/dp/0060256656/ref=sr_1_89?dchild=1&pf_rd_i=4&pf_rd_p=f92327d7-7b1b-5fb4-82be-5400739bec4f&pf_rd_r=DD6Z1HDJS8TPFG2MAF2E&pf_rd_s=merchandised-search-11&pf_rd_t=BROWSE&qid=1611149061&refinements=p_72%3A1250221011&s=books&sr=1-89", photo: "https://images-na.ssl-images-amazon.com/images/I/51KZWBsPPEL._SX218_BO1,204,203,200_QL40_FMwebp_.jpg", best_seller: bs2.id )

b17 = Book.create(title: "Brown Bear, Brown Bear, What Do You See?", author:"Bill Martin Jr.", genre: Faker::Book.genre, age_range: a3.id, rating: 4, link: "https://www.amazon.com/Brown-Bear-What-You-See/dp/0805047905/ref=sr_1_21?dchild=1&pf_rd_i=4&pf_rd_p=f92327d7-7b1b-5fb4-82be-5400739bec4f&pf_rd_r=DD6Z1HDJS8TPFG2MAF2E&pf_rd_s=merchandised-search-11&pf_rd_t=BROWSE&qid=1611149061&refinements=p_72%3A1250221011&s=books&sr=1-21", photo: "https://m.media-amazon.com/images/I/513oWaI69mL._SX260_.jpg")

b18 = Book.create(title: "Llama Llama Time to Share", author:"Anna Dewdney", genre: Faker::Book.genre, age_range: a2.id, rating: 5, link: "https://www.amazon.com/Llama-Time-Share-Anna-Dewdney/dp/0670012335/ref=sr_1_962?dchild=1&pf_rd_i=4&pf_rd_p=f92327d7-7b1b-5fb4-82be-5400739bec4f&pf_rd_r=DD6Z1HDJS8TPFG2MAF2E&pf_rd_s=merchandised-search-11&pf_rd_t=BROWSE&qid=1611149061&refinements=p_72%3A1250221011&s=books&sr=1-962", photo: "https://images-na.ssl-images-amazon.com/images/I/61G+VrRbhEL._SX258_BO1,204,203,200_.jpg", best_seller: nil)

b19 = Book.create(title: "Goodnight, Goodnight Construction Site", author:"Sherri Duskey Rinker", genre: Faker::Book.genre, age_range: a3.id, rating: 5, link: "https://www.amazon.com/Goodnight-Construction-Sherri-Duskey-Rinker/dp/1452111731/ref=sr_1_125?dchild=1&pf_rd_i=4&pf_rd_p=f92327d7-7b1b-5fb4-82be-5400739bec4f&pf_rd_r=DD6Z1HDJS8TPFG2MAF2E&pf_rd_s=merchandised-search-11&pf_rd_t=BROWSE&qid=1611149061&refinements=p_72%3A1250221011&s=books&sr=1-125", photo: "https://m.media-amazon.com/images/I/61xKaMrQimL._SX260_.jpg", best_seller: bs2.id)

b20 = Book.create(title: "Oh, the Places You'll Go!", author:"Dr. Seuss", genre: Faker::Book.genre, age_range: a7.id, rating: 5, link: "https://www.amazon.com/Oh-Places-Youll-Dr-Seuss/dp/0679805273/ref=sr_1_57?dchild=1&pf_rd_i=4&pf_rd_p=f92327d7-7b1b-5fb4-82be-5400739bec4f&pf_rd_r=DD6Z1HDJS8TPFG2MAF2E&pf_rd_s=merchandised-search-11&pf_rd_t=BROWSE&qid=1611149061&refinements=p_72%3A1250221011&s=books&sr=1-57", photo: "https://m.media-amazon.com/images/I/51h7sFpaI3L._SY346_.jpg", best_seller: bs1.id)

# puts "✅ Done seeding!"
