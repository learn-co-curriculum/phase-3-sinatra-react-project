require "net/http"
require "open-uri"
require "json"

class GetData
  URL =
    "https://api.discogs.com/users/theyear1000/collection/folders/0/releases?per_page=20"

  def get_data
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    data = JSON.parse(response.body)
    data["releases"].map do |r|
      r["basic_information"]["formats"][0]["descriptions"].include? "Reissue"
    end
  end
end

#   def parse_data
#     data = JSON.parse(self.get_data)
##Language for testing get results
# data["releases"].map { |r| r["basic_information"]["artists"] }
# data["releases"].map do |r|
#   Album.create(
#     name: r["basic_information"]["title"],
#     date_added: r["date_added"],
#     cover_image: r["basic_information"]["cover_image"],
#     release_description:
#       r["basic_information"]["formats"][0]["descriptions"].to_s,
#     year: r["basic_information"]["year"]
#   )
# end
#     data["releases"].map do |r|
#         r["basic_information"]["genres"].map { |g| g.to_s }
#       end
#   end

data = GetData.new.get_data
puts data
