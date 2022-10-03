puts "Deleting players table..."
Player.delete_all
Player.reset_pk_sequence

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
