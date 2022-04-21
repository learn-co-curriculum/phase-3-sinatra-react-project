puts "Deleting old data..."
Game.destroy_all
User.destroy_all
ProfilePic.destroy_all


puts "🌱 Seeding profile pics..."

ProfilePic.create(picture_src: "https://www.pngmart.com/files/11/Chuck-Norris-Cowboy-PNG-File.png", alt_text: "a beauteus gent")
ProfilePic.create(picture_src: "https://www.pngmart.com/files/11/Chuck-Norris-PNG-Transparent.png", alt_text: "a beauteus gent")
ProfilePic.create(picture_src: "https://www.pngmart.com/files/11/Chuck-Norris-Cowboy-PNG-Photos.png", alt_text: "a beauteus gent")
ProfilePic.create(picture_src: "https://www.pngmart.com/files/11/Chuck-Norris-Cowboy-Transparent-PNG.png", alt_text: "a beauteus gent")
ProfilePic.create(picture_src: "https://www.pngmart.com/files/11/Chuck-Norris-PNG-Image.png", alt_text: "a beauteus gent")
ProfilePic.create(picture_src: "https://www.pngmart.com/files/11/Chuck-Norris-PNG-File.png", alt_text: "a beauteus gent")
ProfilePic.create(picture_src: "https://www.pngmart.com/files/2/Chuck-Norris-PNG-Pic.png", alt_text: "a beauteus gent")
ProfilePic.create(picture_src: "https://www.pngmart.com/files/11/Chuck-Norris-PNG-HD.png", alt_text: "a beauteus gent")

puts "🌱 Seeding users..."

20.times do
    User.create(
        username: Faker::Twitter.screen_name,
        password: "im a unique individual",
        profile_pic: ProfilePic.all.sample
    )

end

User.create(
    username: "eamon",
    password: "password"
)

User.create(
    username: "calypso",
    password: "margot"
)

puts "🌱 Seeding games..."


game1 = Game.create(
    title: "Catan",
    rating: rand(0.0..10.0),
    description: "<p>The women and men of your expedition build the first two settlements. Fortunately, the land is rich in natural resources. You build roads and new settlements that eventually become cities. Will you succeed in gaining supremacy on Catan? Barter trade dominates the scene. Some resources you have in abundance, other resources are scarce. Ore for wool, brick for lumber - you trade according to what is needed for your current building projects. Proceed strategically! If you found your settlements in the right places and skillfully trade your resources, then the odds will be in your favor. But your opponents are smart too.</p>\r\n<p>To begin the game, we build the game board using hexagonal terrain tiles. Catan is born - a beautiful island with mountains, pastures, hills, fields, and forests, surrounded by the sea.</p>\r\n<p>Each of us places two small houses on spaces where three terrain hexes meet. They are our starting settlements.</p>\r\n<p>And so it begins. I roll two dice. An “11”! Each terrain hex is marked with a die roll number. Each player who owns a settlement adjacent to a terrain hex marked with the number rolled receives a resource produced by this hex. Hills produce brick, forests produce lumber, mountains produce ore, fields produce grain, and pastures produce wool.</p>\r\n<p>We use these resources to expand across Catan: we build roads and new settlements, or we upgrade our existing settlements to cities. For example, a road costs 1 brick and 1 lumber. If we do not have the necessary resources, we can acquire them by trading with our opponents.</p>\r\n<p>Each settlement is worth 1 victory point and each city is worth 2 victory points. If you expand cleverly, you may be the first player to reach 10 victory points and thus win the game!</p>",
    image_url: "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1629324722072.jpg",
    min_play_time: 45,
    max_play_time: 90,
    max_players: 4,
    min_players: 2,
    min_age: 10,
    is_expansion: false,
    mechanics: "dice_rolling, trading",
    categories: "dice, economic, family_game, negotiation"
)

game2 = Game.create(
    title: "Monopoly",
    rating: rand(0.0..10.0),
    description: "<p>The thrill of bankrupting an opponent, the possibility of playing a 9 hour game, and the absolution between winning and losing, could change with the roll of the dice. Experience the ups and downs by collecting property color’s sets to build houses, and hopefully upgrading to a hotel. But don’t play just for certain colors, or else your opponent may change their strategy.</p>\r\n<p>The more properties each player owns, the more rent can be charged, but trading is where the game can help you, or hurt you. So, be wise!</p>\r\n<p>Chance cards could be worth money, like $10 for winning second place in a beauty pageant or sending you to “Go” for an extra $200; but you might just get the one that says, “Go To Jail”.</p>\r\n<p>Buy, Sell, Dream and Scheme to Win it All!</p>\r\n<p>Turn a debt into an ultimate victory!</p>",
    image_url: "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1543278754636",
    min_play_time: 40,
    max_play_time: 300,
    max_players: 8,
    min_players: 2,
    min_age: 8,
    is_expansion: false,
    mechanics: "dice_rolling, trading, player_elimination",
    categories: "economic, family_game, negotiation"
)

game3 = Game.create(
    title: "Dominion",
    rating: rand(0.0..10.0),
    description: "<p>You are a monarch, like your parents before you, a ruler of a small pleasant kingdom of rivers and evergreens. Unlike your parents, however, you have hopes and dreams! You want a bigger and more pleasant kingdom, with more rivers and a wider variety of trees. You want a Dominion! <br /><br />In all directions lie fiefs, freeholds, and feodums. All are small bits of land, controlled by petty lords and verging on anarchy. You will bring civilization to these people, uniting them under your banner.</p>\r\n<p>In <em><strong>Dominion</strong></em>, each player starts with an identical, very small deck of cards. In the center of the table is a selection of other cards the players can &quot;buy&quot; as they can afford them. Through their selection of cards to buy, and how they play their hands as they draw them, the players construct their deck on the fly, striving for the most efficient path to the precious victory points by game end.</p>",
    image_url: "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1559254200326-6135RVKbZZL.jpg",
    min_play_time: 30,
    max_play_time: 60,
    max_players: 6,
    min_players: 2,
    min_age: 13,
    is_expansion: false,
    mechanics: "deck_building",
    categories: "card_game, midieval"
)

game4 = Game.create(
    title: "Sushi Go Party!",
    rating: rand(0.0..10.0),
    description: "<p>Sushi Go!, is a party platter of mega maki, super sashimi, and endless edamame. You still earn points by picking winning sushi combos, but now you can customize each game by choosing a la carte from a menu of more than twenty delectable dishes. What's more, up to eight players can join in on the sushi-feast. Let the good times roll!<br /><br />This deluxe edition features lots of opportunities to customize your playing experience. You'll find that while the overall game is basically the same, the variety of cards offers many new opportunities. You'll also notice that the strategy changes from game to game.</p>",
    image_url: "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1559254183526-61DkuJEhUWL.jpg",
    min_play_time: 30,
    max_play_time: 45,
    max_players: 8,
    min_players: 2,
    min_age: 8,
    is_expansion: true,
    mechanics: "card_drafting, drafting, hand_management, set_collection, simultaneous_play",
    categories: "card_game, family_game, party_game"
)
game5 = Game.create(
    title: "Exploding Kittens",
    rating: rand(0.0..10.0),
    description: "<p><strong>Exploding Kittens</strong> is a card game for people who are into kittens and explosions and laser beams and sometimes goats.</p>\r\n<p>In this highly-strategic, kitty-powered version of Russian roulette, players draw cards until someone draws an exploding kitten, at which point they explode, they are Dead, and they are out of the game -- unless that player has a defuse card, which can defuse the kitten using things like laser pointers, belly rubs, and catnip sandwiches. All of the other cards in the deck are used to move, mitigate, or avoid the exploding kittens.</p>",
    image_url: "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1559257206847-51osODpsNIL.jpg",
    min_play_time: 10,
    max_play_time: 20,
    max_players: 5,
    min_players: 2,
    min_age: 7,
    is_expansion: false,
    mechanics: "hand_management, player_elimination, press_your_luck",
    categories: "animals, humor"
)

game6 = Game.create(
    title: "Secret Hitler",
    rating: rand(0.0..10.0),
    description: "<p>Secret Hitler is a dramatic game of political intrigue and betrayal set in 1930's Germany. Players are secretly divided into two teams - liberals and fascists. Known only to each other, the fascists coordinate to sow distrust and install their cold-blooded leader. The liberals must find and stop the Secret Hitler before it's too late. Secret Hitler introduces new mechanics to the hidden-identity game genre. The first is the element of randomness. When laws are passed, the President draws three policies, passes two to the Chancellor, and the Chancellor enacts one. Only the enacted policy is revealed, so players have to rely on the President and Chancellor's word to know what got discarded. The deck has a known initial composition (11 Fascist policies, 6 Liberal policies), and players can roughly track deck contents based on what the President and Chancellor report, though someone might have lied about what was discarded. That means players can form reasonable expectations and plan around probability, but they can also manipulate future probabilities and expectations in a way that benefits their team. The second new mechanic is the &quot;Hitler&quot; identity: If Hitler is elected as Chancellor after the third fascist policy has already been enacted, the game ends immediately and the fascists win. This means Hitler will spend most of the game playing as a liberal to gain players' trust. Once the third fascist policy is enacted, anyone who has helped the group becomes immediately suspect; if the liberals make a wrong move at this point, they lose immediately. This creates incredible moments of tension and relief in the game.</p>",
    image_url: "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1559257704919-51BpeBNTi-L.jpg",
    min_play_time: 30,
    max_play_time: 45,
    max_players: 5,
    min_players: 10,
    min_age: 17,
    is_expansion: false,
    mechanics: "bluffing, hidden_roles, hidden_traitor, player_elimination, teams",
    categories: "bluffing, card_game, humor, party_game, political"
)

game7 = Game.create(
    title: "Risk",
    rating: rand(0.0..10.0),
    description: "<p>Welcome to the world of <strong>Risk</strong>. It’s exciting. It’s unpredictable. It’s all about battling your way to global domination, one territory at a time. And it’s easy to get into the game, fast!</p>\r\n<p>In Risk, you focus on your strategy. You decide on your tactical scheme. You figure out where to place your troops, and who and where you will attack and how often. Every move is a risk that will bring either victory or defeat. Go for the win!</p>\r\n<p><strong>60th Anniversary Edition:</strong></p>\r\n<p>Betrayal. Alliances. Surprise attacks. Risk continues to be one of the world's most popular and influential strategic board games decades after its inception. The special 60th Anniversary Edition of Risk celebrates its legacy with premium packaging and game pieces. For true Risk fans, the included game guide reveals the history of Risk. It also features 5 ways to play, including the classic game plus the original 1957 <em>La conquete du monde</em> rules.</p>\r\n<p>Anything goes on the battlefield of the risk game. Using strategy, smarts, and a little bit of luck, a player will either defeat the enemy or be defeated. Take over the world in this game of strategy conquest!</p>",
    image_url: "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1559254847937-51zyVWbt8aL.jpg",
    min_play_time: 120,
    max_play_time: 6000,
    max_players: 6,
    min_players: 2,
    min_age: 10,
    is_expansion: false,
    mechanics: "area_controll, area_movement, dice_rolling, player_elimination, set_collection",
    categories: "territory building, wargame"
)

game8 = Game.create(
    title: "Codenames",
    rating: rand(0.0..10.0),
    description: "<p>The two rival spymasters know the secret identities of 25 agents. Their teammates know the agents only by their CODENAMES.<br /><br />The teams compete to see who can make contact with all of their agents first. Spymasters give one-word clues that can point to multiple words on the board. Their teammates try to guess words of the right color while avoiding those that belong to the opposing team. And everyone wants to avoid the assassin.<br /><br />Codenames: win or lose, it's fun to figure out the clues.</p>",
    image_url: "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1559254183526-51f6ysXCMmL.jpg",
    min_play_time: 15,
    max_play_time: 30,
    max_players: 8,
    min_players: 2,
    min_age: 10,
    is_expansion: false,
    mechanics: "communication_limits, deduction, memory, press_your_luck, teams",
    categories: "card_game, cooperative, deduction, family_game, party_game, word_game, spies"
)

game9 = Game.create(
    title: "Mouse Trap",
    rating: rand(0.0..10.0),
    description: "<p>Run, little mice, run! Build this fun game's crazy Mouse Trap contraption, but then, beware - you definitely don't want your mouse pawn to get trapped by it. Race to the finish and don't look back!</p>",
    image_url: "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1559257577118-616UmWSJgqL.jpg",
    min_play_time: 30,
    max_play_time: 45,
    max_players: 4,
    min_players: 2,
    min_age: 0,
    is_expansion: false,
    mechanics: "",
    categories: "animals, childrens_game"
)

game9 = Game.create(
    title: "Mind MGMT: The Psychic Espionage 'Game'",
    rating: rand(0.0..10.0),
    description: "<p>Working from the shadows, Mind MGMT once used its psychically-powered agents to put a stop to global crises. However, absolute power corrupts absolutely, and Mind MGMT is now rotting from the inside. To tighten its iron grip on the world stage, Mind MGMT deploys covert operatives around the world to recruit other psychically-attuned individuals to their side. How can this enigmatic organization, hell bent on global domination, be defeated?</p>\r\n<p>Thankfully, a few renegade agents have figured out that Mind MGMT has been compromised and have defected, turning their backs on the syndicate. They now use their own psychic abilities to prevent Mind MGMT from achieving its nefarious goals.</p>\r\n<p>In <em><strong>Mind MGMT: The Psychic Espionage &quot;Game.&quot;</strong></em>, one player controls Mind MGMT and must scour the city for new recruits. They move around on a secret map, trying to visit locations that match one of their three randomly drawn feature cards. They can also use their four Immortals to protect locations from being exposed.</p>\r\n<p>All other players control the rogue agents who must try to stop Mind MGMT before it's too late! They ask questions to the Recruiter and deduce their whereabouts from the answers they receive. Rogue agents can use dry-erase &quot;mental notes&quot; to track all the information they're given.</p>\r\n<p>Mind MGMT wins by either collecting twelve recruits or surviving sixteen turns. The rogue agents can win only be capturing Mind MGMT, which they do when they believe they're on the same block as Mind MGMT.</p>",
    image_url: "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1629321633172.jpg",
    min_play_time: 45,
    max_play_time: 75,
    max_players: 5,
    min_players: 2,
    min_age: 13,
    is_expansion: false,
    mechanics: "deduction, hidden_movement, point_to_point_movement, variable_player_powers",
    categories: "comic_book, deduction, fantasy, sci-fi, spies"
)

roots = Game.create(
    title: "Root",
    rating: rand(0.0..10.0),
    description: "<p>Find adventure in this marvelous asymmetric game. Root provides limitless replay value as you and your friends explore the unique factions all wanting to rule a fantastic forest kingdom. Play as the Marquise de Cat and dominate the woods, extracting its riches and policing its inhabitants, as the Woodland Alliance, gathering supporters and coordinate revolts against the ruling regime, the Eyrie Dynasties, regaining control of the woods while keeping your squabbling court at bay, or as the Vagabond, seeking fame and fortune as you forge alliances and rivalries with the other players. Each faction has its own play style and paths to victory, providing an immersive game experience you will want to play again and again.</p>",
    image_url:  "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1629324760985.jpg",
    min_play_time: 60,
    max_play_time: 90,
    min_players: 2,
    max_players: 5,

    min_age: 4,
    is_expansion: false,
    mechanics: "action_queue, area_control, dice_rolling, engine_building, hand_management, variable_player_powers",
    categories: "adventure, animals, asymmetric",
)

banana = Game.create(
    title: "Bananagrams",
    rating: rand(0.0..10.0),
    description: "",
    image_url:  "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1559257788549-4190ktYkAjL.jpg",
    min_play_time: 5,
    max_play_time: 30,
    min_players: 1,
    max_players: 8,
    min_age: 7,
    is_expansion: false,
    mechanics: "tile_placement",
    categories: "",

)

splendor = Game.create(
    title: "Splendor",
    rating: rand(0.0..10.0),
    description: "<p>As a wealthy Renaissance merchant, acquire mines and transportation, hire artisans and woo the nobility. Create the most fantastic jewelry to become the best-known merchant of them all! Acquire precious stones to trade them for development cards. Use development cards to acquire more gem stones. Use your gems and gold to create the most fantastic jewelry, and appeal to the nobles to gain the prestige you need to win.<br /><br />Splendor is a fast-paced and addictive game of chip-collecting and card development. Players are merchants of the Renaissance trying to buy gem mines, means of transportation, shops; all in order to acquire the most prestige points. If you're wealthy enough, you might even receive a visit from a noble at some point, which of course will further increase your prestige.<br /><br />On your turn, you may (1) collect chips (gems), or (2) buy and build a card, or (3) reserve one card. If you collect chips, you take either three different kinds of chips or two chips of the same kind. If you buy a card, you pay its price in chips and add it to your playing area. To reserve a card, you place it in front of you face down for later building; this costs you a round, but you also get gold in the form of a joker chip, which you can use as any gem.<br /><br />All of the cards you buy increase your wealth as they give you a permanent gem bonus for later buys; some of the cards also give you prestige points. In order to win the game, you must reach 15 prestige points before your opponents do.</p>",
    image_url:  "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1559254164722-51AHDwGznvL.jpg",
    min_play_time: 30,
    max_play_time: 60,
    min_players: 2,
    max_players: 4,

    min_age: 10,
    is_expansion: false,
    mechanics: "drafting, engine_building, set_collection ",
    categories: "card_game, economic, resource_management",

)

wolf = Game.create(
    title: "One Night Ultimate Werewolf",
    rating: rand(0.0..10.0),
    description: "<p>One Night Ultimate Werewolf is a fast game for 3-10 players where everyone gets a role: One of the dastardly Werewolves, the tricky Troublemaker, the helpful Seer or one of a dozen different characters, each with a special ability. In the course of a single morning, your village will decide who is a werewolf... because all it takes is lynching one werewolf to win!!<br /><br />Because it's so fast, fun and engaging, you'll want to play it again and again and no two games are ever the same.</p>",
    image_url:  "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1629323264855.png",
    min_play_time: 15,
    max_play_time: 30,
    min_players: 3,
    max_players: 10,

    min_age: 8,
    is_expansion: false,
    mechanics: "hidden_roles, hidden_traitor, role_playing, variable_player_powers, voting ",
    categories: "bluffing, card_game, deduction, party_game",

)

hanabi = Game.create(
    title: "Hanabi",
    rating: rand(0.0..10.0),
    description:"<p>In <strong>Hanabi</strong>, players race against the clock to build a dazzling fireworks finale. Trouble is, you can see the cards that everyone holds - except your own!<br /><br />Working together, players exchange vital information in order to play their cards in the proper launch sequence. Build and light each firework correctly to win the game and avoid a fizzling fiasco!</p>\r\n<p>In the deluxe version, the cards are replaced with tiles.</p>\r\n<p>Winner of the prestigious <em>Spiel des Jahres</em> Award for 2013. </p>",
    image_url:   "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1635965913684",
    min_play_time: 30,
    max_play_time: 45,
    max_players: 5,
    min_players: 2,
    min_age: 8,
    is_expansion: false,
    mechanics: "communication_limits, cooperative_play, hand_management, memory, set_collection",
    categories: "card_game, deduction",

)

azul = Game.create(
    title: "Azul",
    rating: rand(0.0..10.0),
    description: "<p><strong>Azul</strong> was designed by the world famous, award-winning game author Michael Riesling. Azul captures the beautiful aesthetics of Moorish art in a contemporary board game.</p>\r\n<p>Players compete as artisans decorating the walls of the royal Palace of Dvora. By carefully drafting the correct Quantity and style of tiles, the most clever of artisans plan ahead to maximize the beauty of their work (not to mention their scores!) while ensuring they wasted no supplies in the process.</p>\r\n<p>Introduced by the moors, &quot;azulejos&quot; (originally white and blue ceramic tiles) were fully embraced by the Portuguese, when their King Manuel I, on a visit to the Alhambra Palace in Southern Spain, was mesmerized by the stunning beauty of the Moorish decorative tiles. The King, awestruck by the interior beauty of the Alhambra, immediately ordered that his own Palace in Portugal be decorated with similar wall tiles.</p>\r\n<p>As a tile-laying artist, you have been challenged to embellish the walls of the royal Palace of Dvora.</p>",
    image_url:  "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1559254200327-61EFZADvURL.jpg",
    min_play_time: 30,
    max_play_time: 60,
    max_players: 4,
    min_players: 2,
    min_age: 8,
    is_expansion: false,
    mechanics: "drafting, end_game_bonuses, pattern_building, tile_placement",
    categories: "abstract",

)

scyth = Game.create(
    title:  "Scythe",
    rating: rand(0.0..10.0),
    description: "<p><em>Scythe</em> gives players almost complete control over their fate. Other than each player's individual hidden objective card, the only elements of luck or variability are &quot;Encounter&quot; cards that players will draw as they interact with the citizens of newly explored lands. Each encounter card provides the player with several options, allowing them to mitigate the luck of the draw through their selection. Combat is also driven by choices, not luck or randomness.<br /><br /><em>Scythe</em> uses a streamlined action-selection mechanism (no rounds or phases) to keep gameplay moving at a brisk pace and reduce downtime between turns. While there is plenty of direct conflict for players who seek it, there is no player elimination.<br /><br />Every part of <em>Scythe</em> has an aspect of engine-building to it. Players can upgrade actions to become more efficient, build structures that improve their position on the map, enlist new recruits to enhance character abilities, activate mechs to deter opponents from invading, and expand their borders to reap greater types and quantities of resources. These engine-building aspects create a sense of momentum and progress throughout the game. The order in which players improve their engine adds to the unique feel of each game, even when playing one faction multiple times.</p>",
    image_url:   "https://cdn.shopify.com/s/files/1/0513/4077/1515/products/scythe-board-game.jpg?v=1611090922",
    min_play_time: 90,
    max_play_time: 120,
    max_players: 5,
    min_players: 1,
    min_age: 14,
    is_expansion: false,
    mechanics: "action_selection, area_control, hidden_objective, variable_player_powers, engine_building, grid_movement",
    categories: "asymmetric, resource_management, territory_building",

)

# 40.times do 
#     #need these two out of the create because both mins require them
#     avg_play_time = rand(5..90)
#     max_players = rand(2..20)
#     Game.create(
#         title: Faker::Movie.title,
#         rating: rand(0.0..10.0),
#         description: Faker::ChuckNorris.fact,
#         image_url: Faker::Avatar.image,
#         avg_play_time: avg_play_time,
#         min_play_time: rand(avg_play_time),
#         max_players: max_players,
#         min_players: rand(max_players),
#         play_style: Faker::Company.industry #industries becuase Ruby doesn't like 2 things named Game, so not quite right but temp stand-in
#     )
# end

puts "🌱 Seeding game relationships..."

<<<<<<< HEAD
100.times do
=======
300.times do
>>>>>>> 2db9e9357e86019f0c759a8b7674ebeb7b2fb609
    GameRelationship.create(
        game: Game.all.sample,
        user: User.all.sample,
        played?: [true, false].sample,
        owned?: [true, false].sample,
        liked?: [true, false].sample,
        comment: Faker::ChuckNorris.fact
    )
end




puts "✅ Done seeding!"
