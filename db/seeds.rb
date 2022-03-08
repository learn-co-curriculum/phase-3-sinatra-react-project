puts "Destroy old data..."
Architect.destroy_all
City.destroy_all
Building.destroy_all

puts "🌱 Seeding spices..."

# Seed your database here

a01 = Architect.create(full_name: 'Albert Frey', style: , url: )
a02 = Architect.create(full_name: 'Alvar Aalto' , style: , url: )
a03 = Architect.create(full_name: 'Arne Jacobsen', style: , url: )
a04 = Architect.create(full_name: 'Charles & Ray Eames', style: , url: )
a05 = Architect.create(full_name: 'E. Stewart Williams', style: , url: )
a06 = Architect.create(full_name: 'Eero Saarinen', style: , url: )
a07 = Architect.create(full_name: 'Frank Lloyd Wright', style: , url: )
a08 = Architect.create(full_name: 'Gerrit Reitveld', style: , url: )
a09 = Architect.create(full_name: 'Le Corbusier', style: , url: )
a10 = Architect.create(full_name: 'Ludwig Mies Van Der Rohe', style: , url: )
a11 = Architect.create(full_name: 'Marcel Breuer', style: , url: )
a12 = Architect.create(full_name: 'Oscar Niemeyer', style: , url: )
a13 = Architect.create(full_name: 'Paul R Williams', style: , url: )
a14 = Architect.create(full_name: 'Pierre Koenig', style: , url: )
a15 = Architect.create(full_name: 'Walter Gropius', style: , url: )
a16 = Architect.create(full_name: 'William Pereira', style: , url: )


c01 = City.create(name: 'Palm Springs', url: )
c02 = City.create(name: 'Helsinki', url: )
c03 = City.create(name: 'Riola', url: )
c04 = City.create(name: 'Skovshoved', url: )
c05 = City.create(name: 'LA', url: )
c06 = City.create(name: 'Dulles', url: )
c07 = City.create(name: 'NYC', url: )
c08 = City.create(name: 'St. Louis', url: )
c09 = City.create(name: 'Mill Run', url: )
c10 = City.create(name: 'Oak Park', url: )
c11 = City.create(name: 'Utrecht', url: )
c12 = City.create(name: 'Bologna', url: )
c13 = City.create(name: 'Berlin', url: )
c14 = City.create(name: 'Plano', url: )
c15 = City.create(name: 'Curitiba', url: )
c16 = City.create(name: 'Brasilia', url: )
c17 = City.create(name: 'West Hollywood', url: )
c18 = City.create(name: 'Dessau-Roßlau', url: )
c19 = City.create(name: 'Irvine', url: )


Building.create(name: 'Frey House II', opened: , stories: , height: , architect_id: a01, city_id: c01, style: , map_location: , url: )
Building.create(name: 'Palm Springs City Hall', opened: , stories: , height: , architect_id: a01, city_id: c01, style: , map_location: , url: )
Building.create(name: 'Alvar Aalto House', opened: , stories: , height: , architect_id: a02, city_id: c02, style: , map_location: , url: )
Building.create(name: 'Chiesa parrocchiale di S. Maria Assunta di Riola', opened: , stories: , height: , architect_id: a02, city_id: c03, style: , map_location: , url: )
Building.create(name: 'Skovshoved Petrol Station', opened: , stories: , height: , architect_id: a03, city_id: c04, style: , map_location: , url: )
Building.create(name: 'Eames House', opened: , stories: , height: , architect_id: a04, city_id: c05, style: , map_location: , url: )
Building.create(name: 'Twin Palms (Frank Sinatra House)', opened: , stories: , height: , architect_id: a05, city_id: c01, style: , map_location: , url: )
Building.create(name: 'Coachella Savings and Loan', opened: , stories: , height: , architect_id: a05, city_id: c01, style: , map_location: , url: )
Building.create(name: 'Dulles International', opened: , stories: , height: , architect_id: a06, city_id: c06, style: , map_location: , url: )
Building.create(name: 'TWA Flight Center (Hotel)', opened: , stories: , height: , architect_id: a06, city_id: c07, style: , map_location: , url: )
Building.create(name: 'Gateway Arch', opened: , stories: , height: , architect_id: a06, city_id: c08, style: , map_location: , url: )
Building.create(name: 'Fallingwater', opened: , stories: , height: , architect_id: a07, city_id: c09, style: , map_location: , url: )
Building.create(name: 'FLW Home Studio', opened: , stories: , height: , architect_id: a07, city_id: c10, style: , map_location: , url: )
Building.create(name: 'Schröder House', opened: , stories: , height: , architect_id: a08, city_id: c11, style: , map_location: , url: )
Building.create(name: 'Esprit Nouveau Pavilion', opened: , stories: , height: , architect_id: a09, city_id: c12, style: , map_location: , url: )
Building.create(name: 'Neue Nationalgalerie', opened: , stories: , height: , architect_id: a10, city_id: c13, style: , map_location: , url: )
Building.create(name: 'Farnsworth House', opened: , stories: , height: , architect_id: a10, city_id: c14, style: , map_location: , url: )
Building.create(name: 'Met Breuer', opened: , stories: , height: , architect_id: a11, city_id: c07, style: , map_location: , url: )
Building.create(name: 'Museu Oscar Niemeyer', opened: , stories: , height: , architect_id: a12, city_id: c15, style: , map_location: , url: )
Building.create(name: 'Palácio do Planalto', opened: , stories: , height: , architect_id: a12, city_id: c16, style: , map_location: , url: )
Building.create(name: 'Palm Springs Tennis Club', opened: , stories: , height: , architect_id: a13, city_id: c01, style: , map_location: , url: )
Building.create(name: 'Stahl House', opened: , stories: , height: , architect_id: a14, city_id: c17, style: , map_location: , url: )
Building.create(name: 'Masters House', opened: , stories: , height: , architect_id: a15, city_id: c18, style: , map_location: , url: )
Building.create(name: 'UCI Langson Library', opened: , stories: , height: , architect_id: a16, city_id: c19, style: , map_location: , url: )

puts "✅ Done seeding!"
