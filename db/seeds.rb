require 'rest-client'
puts "🌱 Seeding spices..."

to_visit = List.create(list_name: 'To Visit')
visited = List.create(list_name: 'Visited')

al = State.create(state_name: 'Alabama', abbr: "AL")
ak = State.create(state_name: 'Alaska', abbr: "AK")
az = State.create(state_name: 'Arizona', abbr: "AZ")
ar = State.create(state_name: 'Arkansas', abbr: "AR")
co = State.create(state_name: 'Colorado', abbr: "CO")
ca = State.create(state_name: 'California', abbr: "CA")
ct = State.create(state_name: 'Connecticut', abbr: "CT")
dc = State.create(state_name: 'District of Columbia', abbr: "DC")
de = State.create(state_name: 'Delaware', abbr: "DE")
fl = State.create(state_name: 'Florida', abbr: "FL")
ga = State.create(state_name: 'Georgia', abbr: "GA")
hi = State.create(state_name: 'Hawaii', abbr: "HI")
id = State.create(state_name: 'Idaho', abbr: "ID")
il = State.create(state_name: 'Illinois', abbr: "IL")
ind = State.create(state_name: 'Indiana', abbr: "IN")
ia = State.create(state_name: 'Iowa', abbr: "IA")
ks = State.create(state_name: 'Kansas', abbr: "KS")
ky = State.create(state_name: 'Kentucky', abbr: "KY")
la = State.create(state_name: 'Louisiana', abbr: "LA")
me = State.create(state_name: 'Maine', abbr: "ME")
md = State.create(state_name: 'Maryland', abbr: "MD")
ma = State.create(state_name: 'Massachusetts', abbr: "MA")
mi = State.create(state_name: 'Michigan', abbr: "MI")
mn = State.create(state_name: 'Minnesota', abbr: "MN")
ms = State.create(state_name: 'Mississippi', abbr: "MS")
mo = State.create(state_name: 'Missouri', abbr: "MO")
mt = State.create(state_name: 'Montana', abbr: "MT")
ne = State.create(state_name: 'Nebraska', abbr: "NE")
nv = State.create(state_name: 'Nevada', abbr: "NV")
nh = State.create(state_name: 'New Hampshire', abbr: 'NH')
nj = State.create(state_name: 'New Jersey', abbr: 'NJ')
nm = State.create(state_name: 'New Mexico', abbr: 'NM')
ny = State.create(state_name: 'New York', abbr: 'NY')
nc = State.create(state_name: 'North Carolina', abbr: 'NC')
nd = State.create(state_name: 'North Dakota', abbr: 'ND')
oh = State.create(state_name: 'Ohio', abbr: 'OH')
ok = State.create(state_name: 'Oklahoma', abbr: 'OK')
ore = State.create(state_name: 'Oregon', abbr: 'OR')
pa = State.create(state_name: 'Pennsylvania', abbr: 'PA')
ri = State.create(state_name: 'Rhode Island', abbr: 'RI')
sc = State.create(state_name: 'South Carolina', abbr: 'SC')
sd = State.create(state_name: 'South Dakota', abbr: 'SD')
tn = State.create(state_name: 'Tennessee', abbr: 'TN')
tx = State.create(state_name: 'Texas', abbr: 'TX')
ut = State.create(state_name: 'Utah', abbr: 'UT')
vt = State.create(state_name: 'Vermont', abbr: 'VT')
va = State.create(state_name: 'Virginia', abbr: 'VA')
wa = State.create(state_name: 'Washington', abbr: 'WA')
wv = State.create(state_name: 'West Virginia', abbr: 'WV')
wi = State.create(state_name: 'Wisconsin', abbr: 'WI')
wy = State.create(state_name: 'Wyoming', abbr: 'WY')

# def natl_parks_secret_key
#     ENV["NATL_PARKS_API_KEY"]
# end
def set_states api_abbr
    key = State.all.where(abbr: api_abbr)
    key.pluck(:id).first
end
def parks_dataset
    api_data = {key: 'N7C8ItBAYqHG7msTfmr54HHRqWLAm5iZPL03Lo3F'}

    parks = RestClient.get("https://developer.nps.gov/api/v1/parks?limit=500&api_key=#{api_data[:key]}")

    parks_array = JSON.parse(parks)["data"]
    parks_array.each do |p|
        Park.create(park_name: p["fullName"], description: p["description"], fee: p.dig("entranceFees", 0, "cost"), image_url: p.dig("images", 0, "url"), location: p.dig("addresses", 0), states: p["states"], website: p["url"], state_id: set_states(p["states"][0,2]), list_id: nil)
    end
end

parks_dataset()

puts "✅ Done seeding!"
