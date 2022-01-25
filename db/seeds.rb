require 'rest-client'
puts "🌱 Seeding spices..."

to_visit = List.create(list_name: 'To Visit')
visited = List.create(list_name: 'Visited')

al = State.create(state_name: 'Alabama')
ak = State.create(state_name: 'Alaska')
az = State.create(state_name: 'Arizona')
ar = State.create(state_name: 'Arkansas')
co = State.create(state_name: 'Colorado')
ca = State.create(state_name: 'California')
ct = State.create(state_name: 'Connecticut')
de = State.create(state_name: 'Delaware')
fl = State.create(state_name: 'Florida')
ga = State.create(state_name: 'Georgia')
hi = State.create(state_name: 'Hawaii')
id = State.create(state_name: 'Idaho')
il = State.create(state_name: 'Illinois')
ind = State.create(state_name: 'Indiana')
ia = State.create(state_name: 'Iowa')
ks = State.create(state_name: 'Kansas')
ky = State.create(state_name: 'Kentucky')
la = State.create(state_name: 'Louisiana')
me = State.create(state_name: 'Maine')
md = State.create(state_name: 'Maryland')
ma = State.create(state_name: 'Massachusetts')
mi = State.create(state_name: 'Michigan')
mn = State.create(state_name: 'Minnesota')
ms = State.create(state_name: 'Mississippi')
mo = State.create(state_name: 'Missouri')
mt = State.create(state_name: 'Montana')
ne = State.create(state_name: 'Nebraska')
nv = State.create(state_name: 'Nevada')
nh = State.create(state_name: 'New Hampshire')
nj = State.create(state_name: 'New Jersey')
nm = State.create(state_name: 'New Mexico')
ny = State.create(state_name: 'New York')
nc = State.create(state_name: 'North Carolina')
nd = State.create(state_name: 'North Dakota')
oh = State.create(state_name: 'Ohio')
ok = State.create(state_name: 'Oklahoma')
ore = State.create(state_name: 'Oregon')
pa = State.create(state_name: 'Pennsylvania')
ri = State.create(state_name: 'Rhode Island')
sc = State.create(state_name: 'South Carolina')
sd = State.create(state_name: 'South Dakota')
tn = State.create(state_name: 'Tennessee')
tx = State.create(state_name: 'Texas')
ut = State.create(state_name: 'Utah')
vt = State.create(state_name: 'Vermont')
va = State.create(state_name: 'Virginia')
wa = State.create(state_name: 'Washington')
wv = State.create(state_name: 'West Virginia')
wi = State.create(state_name: 'Wisconsin')
wy = State.create(state_name: 'Wyoming')

# def natl_parks_secret_key
#     ENV["NATL_PARKS_API_KEY"]
# end

def parks_dataset
    api_data = {key: 'N7C8ItBAYqHG7msTfmr54HHRqWLAm5iZPL03Lo3F'}

    parks = RestClient.get("https://developer.nps.gov/api/v1/parks?limit=500&api_key=#{api_data[:key]}")

    parks_array = JSON.parse(parks)["data"]
    parks_array.each do |p|
        Park.create(park_name: p["fullName"], description: p["description"], fee: p["entranceFees"][0][0], image_url: p["images"], location: p["addresses"], state_id: nil, list_id: nil)
    end
end

parks_dataset()

puts "✅ Done seeding!"
