#reset id in table to 1
Customer.destroy_all
Customer.reset_pk_sequence
Seat.destroy_all
Seat.reset_pk_sequence
Plane.destroy_all
Plane.reset_pk_sequence
Pilot.destroy_all
Pilot.reset_pk_sequence


puts " Seeding customers"

#There are 2 planes, each plane has 15 seats. So starting, there are 30 Customers
30.times do 
    Customer.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name
    )
end

#create planes
puts "seeding planes"

Plane.create(plane_number: 1, destination: "Cancun", pilot_id: 1)
Plane.create(plane_number: 2, destination: "Aruba", pilot_id: 2)

puts "seeding seats"

#creating seats for plane 1
seat_num = 0
cus_id = 0
15.times do 
    Seat.create(
        seat_number: seat_num +=1,
        customer_id: cus_id +=1,
        plane_id: 1
        
    )
end

#creating seats for plane 2
#seat_num is global variable
cus2_id = 0
15.times do 
    Seat.create(
        seat_number: seat_num +=1,
        customer_id: cus2_id +=1,
        plane_id: 2
        
    )
end

#creating Pilots

2.times do 
    Pilot.create(first_name: Faker::Name.first_name,
            last_name: Faker::Name.last_name

        )
    end



puts "✅ Done seeding!"