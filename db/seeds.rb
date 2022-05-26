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
Location.create(name: "Springfield peeps", neighborhood: neighborhood_1, household: household_1)
Location.create(name: "LA house", neighborhood: neighborhood_2, household: household_2)
Location.create(name: "Weird Austin", neighborhood: neighborhood_3, household: household_3)
Location.create(name: "Miami Vice", neighborhood: neighborhood_2, household: household_4)
Location.create(name: "Merica", neighborhood: neighborhood_1, household: household_5)
Location.create(name: "Cartoons", neighborhood: neighborhood_2, household: household_6)
Location.create(name: "SpookyTown", neighborhood: neighborhood_3, household: household_7)
Location.create(name: "Dalmatian City", neighborhood: neighborhood_1, household: household_8)
Location.create(name: "Mafia Central", neighborhood: neighborhood_3, household: household_9)




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
