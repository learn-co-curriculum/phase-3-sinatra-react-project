require "net/http"
require "open-uri"
require "json"

class Artist < ActiveRecord::Base
  has_many :albums
  has_many :listen_events, through: :albums

  def artist_fetch
    uri = URI.parse(self.resource_url)
    response = Net::HTTP.get_response(uri)
    data = JSON.parse(response.body)
  end
end
