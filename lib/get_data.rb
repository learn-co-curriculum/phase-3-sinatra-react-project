require "net/http"
require "open-uri"
require "json"

class GetData
  URL =
    "https://api.discogs.com/users/theyear1000/collection/folders/0/releases?per_page=1"

  def get_data
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def parse_data
    data = JSON.parse(self.get_data)
    data["releases"].map { |r| r }
    # data["releases"].map { |r| r["basic_information"]["title"] }
  end
end

data = GetData.new.parse_data
puts data
