puts "🌱 Seeding spices..."

puts "Deleting old data..."
Appointment.destroy_all
Doctor.destroy_all
Patient.destroy_all

puts "Creating doctors..."
d1 = Doctor.create(doctor_firstname: "Doctor1_first", doctor_lastname: "Doctor1_last", doctor_phone: "111-111-1111", doctor_email: "doctor1@email.com")
d2 = Doctor.create(doctor_firstname: "Doctor2_first", doctor_lastname: "Doctor2_last", doctor_phone: "222-222-2222", doctor_email: "doctor2@email.com")
d3 = Doctor.create(doctor_firstname: "Doctor3_first", doctor_lastname: "Doctor3_last", doctor_phone: "333-333-3333", doctor_email: "doctor3@email.com")
d4 = Doctor.create(doctor_firstname: "Doctor4_first", doctor_lastname: "Doctor4_last", doctor_phone: "444-444-4444", doctor_email: "doctor4@email.com")
d5 = Doctor.create(doctor_firstname: "Doctor5_first", doctor_lastname: "Doctor5_last", doctor_phone: "555-555-5555", doctor_email: "doctor5@email.com")

puts "Creating patients..."

p1 = Patient.create(
  patient_firstname: "Patient1_first",
  patient_lastname: "Patient1_last",
  patient_address: "111 Address Street",
  patient_city: "City1",
  patient_state: "CA",
  patient_phone: "000-000-0001",
  patient_email: "patient1@email.com",
)

p2 = Patient.create(
  patient_firstname: "Patient2_first",
  patient_lastname: "Patient2_last",
  patient_address: "222 Address Street",
  patient_city: "City2",
  patient_state: "CA",
  patient_phone: "000-000-0002",
  patient_email: "patient2@email.com",
)

p3 = Patient.create(
  patient_firstname: "Patient3_first",
  patient_lastname: "Patient3_last",
  patient_address: "333 Address Street",
  patient_city: "City3",
  patient_state: "CA",
  patient_phone: "000-000-0003",
  patient_email: "patient3@email.com",
)

p4 = Patient.create(
  patient_firstname: "Patient4_first",
  patient_lastname: "Patient4_last",
  patient_address: "444 Address Street",
  patient_city: "City4",
  patient_state: "CA",
  patient_phone: "000-000-0004",
  patient_email: "patient4@email.com",
)

p5 = Patient.create(
  patient_firstname: "Patient5_first",
  patient_lastname: "Patient5_last",
  patient_address: "555 Address Street",
  patient_city: "City5",
  patient_state: "CA",
  patient_phone: "000-000-0005",
  patient_email: "patient5@email.com",
)

p6 = Patient.create(
  patient_firstname: "Patient6_first",
  patient_lastname: "Patient6_last",
  patient_address: "666 Address Street",
  patient_city: "City6",
  patient_state: "CA",
  patient_phone: "000-000-0006",
  patient_email: "patient6@email.com",
)

puts "Creating Appointments..."
a1 = Appointment.create(
  appointment_date: DateTime.new(2022, 1, 11),
  # appointment_time
  appointment_duration: 30,
  appointment_reason: "Reason 1",
  appointment_type: "New Patient",
  doctor_id: d1.id,
  patient_id: p1.id,
)

a2 = Appointment.create(
  appointment_date: DateTime.new(2022, 2, 22),
  # appointment_time
  appointment_duration: 30,
  appointment_reason: "Reason 2",
  appointment_type: "Check-up",
  doctor_id: d2.id,
  patient_id: p2.id,
)

a3 = Appointment.create(
  appointment_date: DateTime.new(2022, 3, 21),
  # appointment_time
  appointment_duration: 50,
  appointment_reason: "Reason 3",
  appointment_type: "Surgery",
  doctor_id: d3.id,
  patient_id: p3.id,
)

a4 = Appointment.create(
  appointment_date: DateTime.new(2022, 4, 24),
  # appointment_time
  appointment_duration: 100,
  appointment_reason: "Reason 4",
  appointment_type: "New Patient",
  doctor_id: d4.id,
  patient_id: p4.id,
)

a5 = Appointment.create(
  appointment_date: DateTime.new(2022, 5, 15),
  # appointment_time
  appointment_duration: 30,
  appointment_reason: "Reason 5",
  appointment_type: "New Patient",
  doctor_id: d5.id,
  patient_id: p1.id,
)

a6 = Appointment.create(
  appointment_date: DateTime.new(2022, 5, 15),
  # appointment_time
  appointment_duration: 30,
  appointment_reason: "Reason 6",
  appointment_type: "New Patient",
  doctor_id: d5.id,
  patient_id: p6.id,
)

a7 = Appointment.create(
  appointment_date: DateTime.new(2022, 7, 15),
  # appointment_time
  appointment_duration: 40,
  appointment_reason: "Reason 7",
  appointment_type: "Check-up",
  doctor_id: d5.id,
  patient_id: p6.id,
)

puts "✅ Done seeding!"
