require "net/http"
require "open-uri"
require "json"
require "nokogiri"

class Artist < ActiveRecord::Base
  has_many :albums
  has_many :listen_events, through: :albums

  def artist_fetch
    uri = URI.parse(self.resource_url)
    response = Net::HTTP.get_response(uri)
    data = JSON.parse(response.body)
    update(master_url: data["uri"])
    data
  end

  def get_data
    data = self.artist_fetch
    doc = Nokogiri.HTML(URI.open(master_url))
    details = doc.css("div.readmore").text
    update(details: details)
    self
  end
end
