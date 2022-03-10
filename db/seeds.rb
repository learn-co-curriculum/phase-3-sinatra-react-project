Movie.destroy_all
Actor.destroy_all
Role.destroy_all
Review.destroy_all
Critic.destroy_all

puts "🌱 Seeding..."

# Seed your database here

# When you what to fetch details of a movie, we send a post request to the API 

def searchMovie(keyword)
    body = {
            :requests => [
                {
                    :indexName => "content_rt",
                    :query => keyword,
                    :params => "filters=rtId%20%3E%200%20AND%20isEmsSearchable%20%3D%201&hitsPerPage=5&analyticsTags=%5B%22header_search%22%5D&clickAnalytics=true"
                }
            ]
    }
    sleep(1)
    response = JSON.parse(HTTParty.post("https://79frdp12pn-dsn.algolia.net/1/indexes/*/queries?x-algolia-agent=Algolia for JavaScript (4.12.2); Browser (lite)&x-algolia-api-key=175588f6e5f8319b27702e4cc4013561&x-algolia-application-id=79FRDP12PN", :body => body.to_json).body)
    response["results"][0]["hits"][0]
end

def searchActor(keyword)
    body = {
            :requests => [
                {
                    :indexName => "people_rt",
                    :query => keyword,
                    :params => "filters=rtId%20%3E%200%20AND%20isEmsSearchable%20%3D%201&hitsPerPage=5&analyticsTags=%5B%22header_search%22%5D&clickAnalytics=true"
                }
            ]
    }
    sleep(1)
    response = JSON.parse(HTTParty.post("https://79frdp12pn-dsn.algolia.net/1/indexes/*/queries?x-algolia-agent=Algolia for JavaScript (4.12.2); Browser (lite)&x-algolia-api-key=175588f6e5f8319b27702e4cc4013561&x-algolia-application-id=79FRDP12PN", :body => body.to_json).body)
    response["results"][0]["hits"][0]
end


def getReviews(emsId)
    response = JSON.parse(HTTParty.get("https://www.rottentomatoes.com/napi/movie/#{emsId}/criticsReviews/all?endCursor=MQ%3D%3D&startCursor=").body)
    response["reviews"]
end



currentMovieTitles = JSON.parse(HTTParty.get("https://www.rottentomatoes.com/api/private/v2.0/browse?maxTomato=100&services=amazon%3Bhbo_go%3Bitunes%3Bnetflix_iw%3Bvudu%3Bamazon_prime%3Bfandango_now&certified=false&sortBy=release&type=dvd-streaming-all").body)["results"].map {|movie| movie["title"]}

currentMovieTitles.each { |title|
    
    movieDetails = searchMovie(title)
    score = movieDetails["rottenTomatoes"] != nil ? movieDetails["rottenTomatoes"] : {
        "audienceScore" => 0,
        "scoreSentiment" => "NA",
        "criticsScore" => 0,
    }
    movie = Movie.create(title: title, description: movieDetails["description"], release_year: movieDetails["releaseYear"], rating: movieDetails["rating"], poster_image_url: movieDetails["posterImageUrl"], run_time: movieDetails["runTime"], audience_score: score["audienceScore"], score_sentiment: score["scoreSentiment"], critics_score: score["criticsScore"])

    actorDetails = movieDetails["cast"]
    actorDetails.each { |actorDetail| 
    
        actor = Actor.find_by name: actorDetail["name"]
        if actor == nil
            actorInformation = searchActor(actorDetail["name"])
            actorInformation = actorInformation != nil ? actorInformation : {
                "filmographyCount" => 0,
                "recentTitleYear" => "NA",
                "profileImageUrl" => "https://images.fandango.com/cms/assets/5b6ff500-1663-11ec-ae31-05a670d2d590--rtactordefault.png",
            }
            actor = Actor.create(name: actorDetail["name"], filmography_count: actorInformation["filmographyCount"], recent_title_year: actorInformation["recentTitleYear"], profile_image_url: actorInformation["profileImageUrl"])
        end
        Role.create(movie_id: movie.id , actor_id: actor.id)
        puts "actor created"
    }

    reviews = getReviews(movieDetails["emsId"])
    reviews.each { |review|
        critic = Critic.find_by name: review["critic"]["name"]
        if critic == nil
            critic = Critic.create(name: review["critic"]["name"], image:review["critic"]["criticPictureUrl"])
        end
        Review.create(movie_id: movie.id, critic_id: critic.id, content: review["quote"], creation_date: review["creationDate"], score_ori: review["scoreOri"], score_sentiment: review["scoreSentiment"], review_url: review["reviewUrl"])
        puts "review created"
    }

    puts "movie created"
}



puts "✅ Done seeding!"