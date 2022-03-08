puts "Destroy old data..."
Architect.destroy_all
City.destroy_all
Building.destroy_all

puts "🌱 Seeding spices..."

# Seed your database here

a01 = Architect.create(full_name: 'Albert Frey')
a02 = Architect.create(full_name: 'Alvar Aalto' )
a03 = Architect.create(full_name: 'Arne Jacobsen')
a04 = Architect.create(full_name: 'Charles & Ray Eames')
a05 = Architect.create(full_name: 'E. Stewart Williams')
a06 = Architect.create(full_name: 'Eero Saarinen')
a07 = Architect.create(full_name: 'Frank Lloyd Wright')
a08 = Architect.create(full_name: 'Gerrit Reitveld')
a09 = Architect.create(full_name: 'Le Corbusier')
a10 = Architect.create(full_name: 'Ludwig Mies Van Der Rohe')
a11 = Architect.create(full_name: 'Marcel Breuer')
a12 = Architect.create(full_name: 'Oscar Niemeyer')
a13 = Architect.create(full_name: 'Paul R Williams')
a14 = Architect.create(full_name: 'Pierre Koenig')
a15 = Architect.create(full_name: 'Walter Gropius')
a16 = Architect.create(full_name: 'William Pereira')


c01 = City.create(name: 'Palm Springs')
c02 = City.create(name: 'Helsinki')
c03 = City.create(name: 'Riola')
c04 = City.create(name: 'Skovshoved')
c05 = City.create(name: 'LA')
c06 = City.create(name: 'Dulles')
c07 = City.create(name: 'NYC')
c08 = City.create(name: 'St. Louis')
c09 = City.create(name: 'Mill Run')
c10 = City.create(name: 'Oak Park' )
c11 = City.create(name: 'Utrecht')
c12 = City.create(name: 'Bologna')
c13 = City.create(name: 'Berlin')
c14 = City.create(name: 'Plano')
c15 = City.create(name: 'Curitiba')
c16 = City.create(name: 'Brasilia')
c17 = City.create(name: 'West Hollywood')
c18 = City.create(name: 'Dessau-Roßlau')
c19 = City.create(name: 'Irvine')


Building.create(name: 'Frey House II', architect_id: a01, city_id: c01)
Building.create(name: 'Palm Springs City Hall', architect_id: a01, city_id: c01)
Building.create(name: 'Alvar Aalto House', architect_id: a02, city_id: c02)
Building.create(name: 'Chiesa parrocchiale di S. Maria Assunta di Riola', architect_id: a02, city_id: c03)
Building.create(name: 'Skovshoved Petrol Station', architect_id: a03, city_id: c04)
Building.create(name: 'Eames House', architect_id: a04, city_id: c05)
Building.create(name: 'Twin Palms (Frank Sinatra House)', architect_id: a05, city_id: c01)
Building.create(name: 'Coachella Savings and Loan', architect_id: a05, city_id: c01)
Building.create(name: 'Dulles International', architect_id: a06, city_id: c06)
Building.create(name: 'TWA Flight Center (Hotel)', architect_id: a06, city_id: c07)
Building.create(name: 'Gateway Arch', architect_id: a06, city_id: c08)
Building.create(name: 'Fallingwater', architect_id: a07, city_id: c09)
Building.create(name: 'FLW Home Studio', architect_id: a07, city_id: c10)
Building.create(name: 'Schröder House', architect_id: a08, city_id: c11)
Building.create(name: 'Esprit Nouveau Pavilion', architect_id: a09, city_id: c12)
Building.create(name: 'Neue Nationalgalerie', architect_id: a10, city_id: c13)
Building.create(name: 'Farnsworth House', architect_id: a10, city_id: c14)
Building.create(name: 'Met Breuer', architect_id: a11, city_id: c07)
Building.create(name: 'Museu Oscar Niemeyer', architect_id: a12, city_id: c15)
Building.create(name: 'Palácio do Planalto', architect_id: a12, city_id: c16)
Building.create(name: 'Palm Springs Tennis Club', architect_id: a13, city_id: c01)
Building.create(name: 'Stahl House', architect_id: a14, city_id: c17)
Building.create(name: 'Masters House', architect_id: a15, city_id: c18)
Building.create(name: 'UCI Langson Library', architect_id: a16, city_id: c19)

puts "✅ Done seeding!"
