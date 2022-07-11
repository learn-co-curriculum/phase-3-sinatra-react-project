# create_table "hole_scores", force: :cascade do |t|
#     t.integer "hole_num"
#     t.integer "par"
#     t.integer "num_strokes"
#     t.integer "num_putts"
#     t.boolean "fairway_hit"
#     t.integer "round_id"
#   end

#   create_table "players", force: :cascade do |t|
#     t.string "username"
#   end

#   create_table "rounds", force: :cascade do |t|
#     t.datetime "round_date"
#     t.integer "player_id"
#   end

# end


puts "Deleting old data..."

Player.destroy_all
Round.destroy_all
HoleScore.destroy_all

puts "Creating Players..."

player1 = Player.create(username: "Shane")
player2 = Player.create(username: "Lucas")
player3 = Player.create(username: "Kiran")

puts "Creating Rounds..."

round1 = Round.create(round_date: 05/10/22, player_id: player1.id)
round2 = Round.create(round_date: 05/15/22, player_id: player1.id)
round3 = Round.create(round_date: 05/10/22, player_id: player2.id)
round4 = Round.create(round_date: 05/15/22, player_id: player2.id)


puts "Creating HoleScores..."


    #round 1 Shane

    HoleScore.create(hole_num: 1, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round1.id)
    HoleScore.create(hole_num: 2, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round1.id)
    HoleScore.create(hole_num: 3, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round1.id)
    HoleScore.create(hole_num: 4, par: 3, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round1.id)
    HoleScore.create(hole_num: 5, par: 5, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round1.id)
    HoleScore.create(hole_num: 6, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round1.id)
    HoleScore.create(hole_num: 7, par: 5, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round1.id)
    HoleScore.create(hole_num: 8, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round1.id)
    HoleScore.create(hole_num: 9, par: 3, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round1.id)
    HoleScore.create(hole_num: 10, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round1.id)
    HoleScore.create(hole_num: 11, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round1.id)
    HoleScore.create(hole_num: 12, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round1.id)
    HoleScore.create(hole_num: 13, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round1.id)
    HoleScore.create(hole_num: 14, par: 3, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round1.id)
    HoleScore.create(hole_num: 15, par: 5, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round1.id)
    HoleScore.create(hole_num: 16, par: 5, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round1.id)
    HoleScore.create(hole_num: 17, par: 3, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round1.id)
    HoleScore.create(hole_num: 18, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round1.id)

    #round 2 Shane

    HoleScore.create(hole_num: 1, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round2.id)
    HoleScore.create(hole_num: 2, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round2.id)
    HoleScore.create(hole_num: 3, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round2.id)
    HoleScore.create(hole_num: 4, par: 3, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round2.id)
    HoleScore.create(hole_num: 5, par: 5, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round2.id)
    HoleScore.create(hole_num: 6, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round2.id)
    HoleScore.create(hole_num: 7, par: 5, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round2.id)
    HoleScore.create(hole_num: 8, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round2.id)
    HoleScore.create(hole_num: 9, par: 3, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round2.id)
    HoleScore.create(hole_num: 10, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round2.id)
    HoleScore.create(hole_num: 11, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round2.id)
    HoleScore.create(hole_num: 12, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round2.id)
    HoleScore.create(hole_num: 13, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round2.id)
    HoleScore.create(hole_num: 14, par: 3, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round2.id)
    HoleScore.create(hole_num: 15, par: 5, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round2.id)
    HoleScore.create(hole_num: 16, par: 5, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round2.id)
    HoleScore.create(hole_num: 17, par: 3, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round2.id)
    HoleScore.create(hole_num: 18, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round2.id)

    # round3 Lucas

    HoleScore.create(hole_num: 1, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round3.id)
    HoleScore.create(hole_num: 2, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round3.id)
    HoleScore.create(hole_num: 3, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round3.id)
    HoleScore.create(hole_num: 4, par: 3, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round3.id)
    HoleScore.create(hole_num: 5, par: 5, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round3.id)
    HoleScore.create(hole_num: 6, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round3.id)
    HoleScore.create(hole_num: 7, par: 5, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round3.id)
    HoleScore.create(hole_num: 8, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round3.id)
    HoleScore.create(hole_num: 9, par: 3, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round3.id)
    HoleScore.create(hole_num: 10, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round3.id)
    HoleScore.create(hole_num: 11, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round3.id)
    HoleScore.create(hole_num: 12, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round3.id)
    HoleScore.create(hole_num: 13, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round3.id)
    HoleScore.create(hole_num: 14, par: 3, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round3.id)
    HoleScore.create(hole_num: 15, par: 5, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round3.id)
    HoleScore.create(hole_num: 16, par: 5, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round3.id)
    HoleScore.create(hole_num: 17, par: 3, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round3.id)
    HoleScore.create(hole_num: 18, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round3.id)

       # round4 Lucas

    HoleScore.create(hole_num: 1, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round4.id)
    HoleScore.create(hole_num: 2, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round4.id)
    HoleScore.create(hole_num: 3, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round4.id)
    HoleScore.create(hole_num: 4, par: 3, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round4.id)
    HoleScore.create(hole_num: 5, par: 5, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round4.id)
    HoleScore.create(hole_num: 6, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round4.id)
    HoleScore.create(hole_num: 7, par: 5, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round4.id)
    HoleScore.create(hole_num: 8, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round4.id)
    HoleScore.create(hole_num: 9, par: 3, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round4.id)
    HoleScore.create(hole_num: 10, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round4.id)
    HoleScore.create(hole_num: 11, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round4.id)
    HoleScore.create(hole_num: 12, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round4.id)
    HoleScore.create(hole_num: 13, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round4.id)
    HoleScore.create(hole_num: 14, par: 3, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round4.id)
    HoleScore.create(hole_num: 15, par: 5, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round4.id)
    HoleScore.create(hole_num: 16, par: 5, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round4.id)
    HoleScore.create(hole_num: 17, par: 3, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round4.id)
    HoleScore.create(hole_num: 18, par: 4, num_strokes: rand(1..10) , num_putts: rand(1..5), fairway_hit: [true, false].sample, round_id: round4.id)



puts "✅ Done seeding!"
