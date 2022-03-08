puts "🌱 Seeding spices..."

# Seed your database here

def searchMovie(keyword)
    body = {
            :requests => [
                {
                    :indexName => "content_rt",
                    :query => keyword,
                    :params => "filters=rtId%20%3E%200%20AND%20isEmsSearchable%20%3D%201&hitsPerPage=5&analyticsTags=%5B%22header_search%22%5D&clickAnalytics=true"
                },
                {
                    :indexName => "people_rt",
                    :query => keyword,
                    :params => "filters=rtId%20%3E%200%20AND%20isEmsSearchable%20%3D%201&hitsPerPage=5&analyticsTags=%5B%22header_search%22%5D&clickAnalytics=true"
                }
            ]
    }
    response = JSON.parse(HTTParty.post("https://79frdp12pn-dsn.algolia.net/1/indexes/*/queries?x-algolia-agent=Algolia for JavaScript (4.12.2); Browser (lite)&x-algolia-api-key=175588f6e5f8319b27702e4cc4013561&x-algolia-application-id=79FRDP12PN", :body => body.to_json).body)
    response["results"][0]["hits"][0]
end

def searchReviews(emsId)
    response = JSON.parse(HTTParty.get("https://www.rottentomatoes.com/napi/movie/#{emsId}/criticsReviews/all?endCursor=MQ%3D%3D&startCursor=").body)
    response["reviews"]
end

Movie.destroy_all
Actor.destroy_all
Role.destroy_all

currentMovieTitles = JSON.parse(HTTParty.get("https://www.rottentomatoes.com/api/private/v2.0/search/default-list").body).map {|movie| movie["title"]}

currentMovieTitles.each { |title|
    
    movieDetails = searchMovie(title)
    movie = Movie.create(title: title)

    actorDetails = movieDetails["cast"]
    actorDetails.each { |actorDetail| 
    
        actor = Actor.find_by name: actorDetail["name"]
        if actor == nil
            actor = Actor.create(name: actorDetail["name"])
        end
        Role.create(movie_id: movie.id , actor_id: actor.id)
    }

    reviews = searchReviews(movieDetails["emsId"])




}













puts "✅ Done seeding!"
