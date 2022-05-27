puts "🌱 Seeding your neighborhoods..."
#clean-up before seeding
Neighborhood.destroy_all
Location.destroy_all
Household.destroy_all
Member.destroy_all

#neighhorhoods
neighborhood_1 = Neighborhood.create(name: "Caliterra")
neighborhood_2 = Neighborhood.create(name: "Wellington")
neighborhood_3= Neighborhood.create(name: "Meadowbrook")

#households
household_1 = Household.create(family_name: "Simpson Residence")
household_2 = Household.create(family_name: "Dunphy Home")
household_3 = Household.create(family_name: "Musk House")
household_4 = Household.create(family_name: "The Johnson's")
household_5 = Household.create(family_name: "House of Doe")
household_6 = Household.create(family_name: "Tom & Jerry's")
household_7 = Household.create(family_name: "Casa Addams")
household_8 = Household.create(family_name: "Maison de Vil")
household_9 = Household.create(family_name: "The Sopranos")

#locations -join
Location.create(name: "Springfield Home", neighborhood: neighborhood_1, household: household_1, address: "742 Evergreen Terrace, Springfield, OR 97477")
Location.create(name: "Anytown House", neighborhood: neighborhood_3, household: household_1, address: "321 Anystreet, Anytown, AT 54320")
Location.create(name: "LA House", neighborhood: neighborhood_2, household: household_2, address: "10336 Dunleer Dr, Los Angeles, LA 90064")
Location.create(name: "Vacay House", neighborhood: neighborhood_1, household: household_2, address: "470 Sunshine Ln, Santa Barbara, CA 93105 ")
Location.create(name: "Austin House", neighborhood: neighborhood_3, household: household_3, address: "680 Capitol Dr, Austin, TX 78753")
Location.create(name: "Miami Vacation Home", neighborhood: neighborhood_2, household: household_4, address: "7701 Collins Ave, Miami, FL 3141")
Location.create(name: "Home Sweet Home", neighborhood: neighborhood_1, household: household_5, address: "123 American Rd, Greenville, AL 36307")
Location.create(name: "Primary Residence", neighborhood: neighborhood_2, household: household_6, address: "552 Getaway Dr, Manhattan, NY 10001")
Location.create(name: "Spooky House", neighborhood: neighborhood_3, household: household_7, address: "001 Cemetery Ln, Westfield, NJ 07091")
Location.create(name: "Dalmatian Central", neighborhood: neighborhood_1, household: household_8, address: "101 Dalmatian St, London, SW1V 3NS, England")
Location.create(name: "Mafia HQ", neighborhood: neighborhood_3, household: household_9, address: "14 Aspen Dr, North Caldwell, NJ 7006")




#members

homer = Member.create(first_name: "Homer", last_name: "Simpson", age: 34, profession: "factory worker", household: household_1)
marge = Member.create(first_name: "Marge", last_name: "Simpson", age: 32, profession: "homemaker", household: household_1)
phil = Member.create(first_name: "Phil", last_name: "Dunphy", age: 46, profession: "realtor", household: household_2)
claire = Member.create(first_name: "Claire", last_name: "Dunphy", age: 46, profession: "closet sales", household: household_2)
luke = Member.create(first_name: "Luke", last_name: "Dunphy", age: 12 , profession: "student", household: household_2)
alex = Member.create(first_name: "Alex", last_name: "Dunphy", age: 14, profession: "student", household: household_2)
haley = Member.create(first_name: "Haley", last_name: "Dunphey", age: 16, profession: "student", household: household_2)
elon = Member.create(first_name: "Elon", last_name: "Musk", age: 45, profession: "CEO of many things", household: household_3)
don = Member.create(first_name: "Don", last_name: "Johnson", age: 67, profession: "actor", household: household_4 )
misty = Member.create(first_name: "Misty", last_name: "Lou", age: 35, profession: "model", household: household_4)
jane = Member.create(first_name: "Jane", last_name: "Doe", age: 56, profession: "lawyer", household: household_5)
john = Member.create(first_name: "John", last_name: "Doe", age: 58, profession: "physician", household: household_5)
tom = Member.create(first_name: "Tom", last_name: "Cat", age: 9, profession: "hunter", household: household_6)
jerry = Member.create(first_name: "Jerry", last_name: "Mouse", age: 4, profession: "escape artist", household: household_6)
gomez = Member.create(first_name: "Gomez", last_name: "Addams", age: 101, profession: "retired", household: household_7)
morticia = Member.create(first_name: "Morticia", last_name: "Addams", age: 110, profession: "retired", household: household_7)
wednedsday = Member.create(first_name: "Wednesday", last_name: "Addams", age: 12, profession: "student", household: household_7)
pugsley = Member.create(first_name: "Pugsley", last_name: "Addams", age: 10, profession: "student", household: household_7)
cruella = Member.create(first_name: "Cruella", last_name: "de Vil", age: 59, profession: "fashion designer", household: household_8)
tony = Member.create(first_name: "Antony", last_name: "Soprano", age: 62, profession: "affiliated gangster", household: household_9)




puts "✅ Done seeding! Welcome home!"
