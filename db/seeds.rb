puts "🌱 Seeding spices..."

# Seed your database here

    # t.string :option_name
    # t.integer :num_votes
    # t.integer :decision_id
    # t.boolean :chosen

option_data = [
{
    option_name: "Bob's Burgers",
    num_votes: nil,
    decision_id: nil,
    chosen: false
},
{
    option_name: "Shennanigan's",
    num_votes: nil,
    decision_id: nil,
    chosen: false
},
{
    option_name: "Tony's Pizza",
    num_votes: nil,
    decision_id: nil,
    chosen: false
},
{
    option_name: "3 Kilt's Tavern",
    num_votes: nil,
    decision_id: nil,
    chosen: false
},
{
    option_name: "In-N-Out",
    num_votes: nil,
    decision_id: nil,
    chosen: false
},
{
    option_name: "Mono Mono Korean Fried Chicken",
    num_votes: nil,
    decision_id: nil,
    chosen: false
},
{
    option_name: "Bubba Gump Shrimp Co.",
    num_votes: nil,
    decision_id: nil,
    chosen: false
},
{
    option_name: "Saucy Bombay",
    num_votes: nil,
    decision_id: nil,
    chosen: false
},
{
    option_name: "Fogo de Chão Brazilian Steakhouse",
    num_votes: nil,
    decision_id: nil,
    chosen: false
},
{
    option_name: "Viewhouse",
    num_votes: nil,
    decision_id: nil,
    chosen: false
},
{
    option_name: "Cheba Hut",
    num_votes: nil,
    decision_id: nil,
    chosen: false
},
{
    option_name: "China Wok",
    num_votes: nil,
    decision_id: nil,
    chosen: false
},
{
    option_name: "Sushi-Rama",
    num_votes: nil,
    decision_id: nil,
    chosen: false
},
{
    option_name: "El Paraiso",
    num_votes: nil,
    decision_id: nil,
    chosen: false
},
{
    option_name: "BD's Mongolian Grill",
    num_votes: nil,
    decision_id: nil,
    chosen: false
},
{
    option_name: "Maggiano's Little Italy",
    num_votes: nil,
    decision_id: nil,
    chosen: false
},
{
    option_name: "McDonald's",
    num_votes: nil,
    decision_id: nil,
    chosen: false
},
{
    option_name: "The Pig & The Sprout",
    num_votes: nil,
    decision_id: nil,
    chosen: false
},
{
    option_name: "Woodie Fisher",
    num_votes: nil,
    decision_id: nil,
    chosen: false
},
{
    option_name: "Steve's Place",
    num_votes: nil,
    decision_id: nil,
    chosen: false
},
{
    option_name: "Uptown Cabaret",
    num_votes: nil,
    decision_id: nil,
    chosen: false
},
]

# users
#     t.string :username
#     t.integer :decisions_made
user_data = [
{
    username: "Tyroil Smoochie-Wallace",
    decisions_made: nil
},
{
    username: "Saggitariutt Jefferspin",
    decisions_made: nil
},
{
    username: "Ozamataz Buckshank",
    decisions_made: nil
},
{
    username: "Quatro Quatro",
    decisions_made: nil
},
{
    username: "Hingle McCringleberry",
    decisions_made: nil
},
{
    username: "T.J. A.J. R.J. Backslashinfourth V",
    decisions_made: nil
},
{
    username: "Sequester Grundelplith M.D.",
    decisions_made: nil
},
]

# user_decision_joins
#     t.integer :decision_id
#     t.integer :user_id

# decisions
#     t.string :decision_name
#     t.string :decision_description
#     t.boolean :decided
decision_names_array = ["Happy Hour", "Breakfast", "Brunch", "Lunch", "Dinner", "Nightlife"]
decision_descriptions_array = ["Flatiron Phase 1", "Flatiron Phase 3", "Flatiron Phase 5", "Flatiron Administration", "Colorado Rockies"]


decision_data = [
{
    decision_name: 
    decision_description:
    decided: false
},
]

puts "✅ Done seeding!"


