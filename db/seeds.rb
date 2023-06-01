puts "🌱 Seeding spices..."

puts "destroying all"
Owner.destroy_all
MaintenanceRequest.destroy_all
Unit.destroy_all
puts "DESTROYED!1! AHHH NOOOOOOOO"

puts "seeding owners"
o1 = Owner.create(name: "Kyle Rieman", total_units_owned: 3)
o2 = Owner.create(name: "Joe Decker", total_units_owned: 2)
o3 = Owner.create(name: "Keith Strausser", total_units_owned: 1)
o4 = Owner.create(name: "Clay Henry", total_units_owned: 1)
o5 = Owner.create(name: "Bob Brady", total_units_owned: 1)
puts "SLUMLORDS UNITE!"

puts "seeding maintenance requests"
m1 = MaintenanceRequest.create(urgency: "low", description: "back porch light not working", expected_cost: 150.00, actual_cost: 5.29, date_opened: "2022-09-17", date_closed: "2022-09-17" )
m2 = MaintenanceRequest.create(urgency: "medium", description: "freezer not staying cold", expected_cost: 250.00, actual_cost: 752.36, date_opened: '2022-10-16', date_closed: '2022-10-16' )
m3 = MaintenanceRequest.create(urgency: "high", description: "front window glass broken", expected_cost: 100.00, actual_cost: 125.98, date_opened: '2022-01-09', date_closed: '2022-01-09' )
m4 = MaintenanceRequest.create(urgency: "low", description: "lots of ants on back deck", expected_cost: 15.00, actual_cost: 15.00, date_opened: '2022-06-03', date_closed: '2022-06-03' )
m5 = MaintenanceRequest.create(urgency: "medium", description: "gfci outlet in bathroom keeps resetting", expected_cost: 20.00, actual_cost: 20.00, date_opened: '2022-12-26', date_closed: '2022-12-26' )
m6 = MaintenanceRequest.create(urgency: "high", description: "smoke coming from furnace", expected_cost: 500.00, actual_cost: 1385.69, date_opened: '2022-11-08', date_closed: '2022-11-11' )
m7 = MaintenanceRequest.create(urgency: "low", description: "critter scurrying sound coming from attic", expected_cost: 40.00, actual_cost: 20.00, date_opened: '2022-09-17', date_closed: '2022-09-17' )
m8 = MaintenanceRequest.create(urgency: "medium", description: "front storm door off hinges", expected_cost: 60.00, actual_cost: 20.25, date_opened: '2022-09-17', date_closed: '2022-09-17' )
puts "TENANTS DRIVE ME NUTS"


puts "seeding units"
u1 = Unit.create(address: "123 Fake Street Columbia, MO 65203", current_tenant: "Jim Jones", open_request?: true, owner_id: o3.id, maintenancerequest_id: m1.id)
u2 = Unit.create(address: "4585 North Ave. Jefferson City, MO 65111", current_tenant: "Katy Katters", open_request?: false, owner_id: o2.id, maintenancerequest_id: m1.id)
u3 = Unit.create(address: "13898 SE Rollins Rd. Columbia, MO 65203", current_tenant: "Mike Meddler", open_request?: true, owner_id: o4.id, maintenancerequest_id: m3.id)
u4 = Unit.create(address: "411 River Rd. Rocheport, MO 65279", current_tenant: "Brian Bukowski", open_request?: false, owner_id: o5.id, maintenancerequest_id: m4.id)
u5 = Unit.create(address: "666 Unlucky Ave. Jefferson City, MO 65111", current_tenant: "Jack Black", open_request?: false, owner_id: o2.id, maintenancerequest_id: m5.id)
u6 = Unit.create(address: "1 Broadway Blvd. Unit 1 Columbia, MO 65201", current_tenant: "Timmy Taylor", open_request?: false, owner_id: o1.id, maintenancerequest_id: m6.id)
u7 = Unit.create(address: "1 Broadway Blvd. Unit 2 Columbia, MO 65201", current_tenant: "Tammy Taylor", open_request?: true, owner_id: o1.id, maintenancerequest_id: m7.id)
u8 = Unit.create(address: "420 Pleasant St. Columbia, MO 65203", current_tenant: "Bob Marley", open_request?: false, owner_id: o1.id, maintenancerequest_id: m8.id)
puts 'NO VACANT UNITS'


puts "✅ Done seeding!"


#maintreq should be join table (belong to owner, belong to unit). 

#newmaintreq should have owner ID and unit ID.

#going to have to review migrations, etc. in order to fix some things here. 

#date closed should be null on open reqs. this will be changed when the user marks as closed on the front end.

#as user, I am manager. first, i can see an overview of current units. 
    # - lets add in a column for owner name, to the right of Owner ID in units overview. 
    #from the unit overview, I can see which unit has an open request. 

#in open reqs, I can 
    #see all info about requests, inlcluding tenant and owner
    #delete a request (in case of mistake, etc.)
    #update the open request to closed - once this is done I should no longer see the request (as it has been marked closed) 
            #this means that open_req boolean needs to be in maintreq, not in unit.
        #update actual cost - we make note of expected cost while subbing form, and actual cost at time of closing the open request.


    #in all (past) requests, i can
        #see all requests, including those currently open and reqs that have been closed. 