puts "Deleting players table..."
Player.delete_all
Player.reset_pk_sequence
Team.delete_all
Team.reset_pk_sequence

puts "Seeding players..."

i=1
34.times do
    res = RestClient.get "https://site.api.espn.com/apis/site/v2/sports/football/nfl/teams/#{i}/roster"
    player_hash = JSON.parse(res)
    puts "Seeding #{player_hash["team"]["name"]} players..."
    player_hash["athletes"].each do |group|
        group["items"].each do |p|
            Player.create(
                name: p["fullName"],
                position: p["position"]["name"],
                number: p["jersey"],
                status: p["status"]["name"],
                is_drafted: false,
                team_name: player_hash["team"]["name"],
                team_location: player_hash["team"]["location"],
                team_logo: player_hash["team"]["logo"],
                image: p["headshot"]
            )
        end
    end
    i = i + 1
end

puts "Done seeding!"

Team.create(name: "", user_id: 1, player_id: 18, starter: true)
Team.create(name: "", user_id: 1, player_id: 19, starter: false)
Team.create(name: "", user_id: 1, player_id: 11, starter: true)
Team.create(name: "", user_id: 1, player_id: 14)
Team.create(name: "", user_id: 1, player_id: 221)
Team.create(name: "", user_id: 1, player_id: 16)
Team.create(name: "", user_id: 1, player_id: 29)
Team.create(name: "", user_id: 1, player_id: 23)
Team.create(name: "", user_id: 1, player_id: 28)
Team.create(name: "", user_id: 1, player_id: 30)
Team.create(name: "", user_id: 1, player_id: 33)
Team.create(name: "", user_id: 1, player_id: 37)