# Phase 3 Project Guidelines

![entity relationship diagram](./diagram.png)

## Endpoints

- `GET /`:

- `GET /appointments`: Get appointments

  - `POST /appointments`: Create appointments
  - `PATCH /appointments/:id`: Update appointment by id (Change only to date and duration?)
    - Updating: date, duration, reason, and type
  - `DELETE /appointments/:id`: Delete appointment
  - `GET /appointments/:id`: Get appointment by id

- `GET /doctors`: Get doctors

  - `POST /doctors/`: Create new doctor
  - `PATCH /doctors/:doctor_id`: Update doctor by id
    - Updating: firstname, lastname, phone, email
  - `GET /doctors/:doctor_id`: Get doctor by id
  - `GET /doctors/:doctor_id/appointments`: Get appointments associated with doctor by id
  - `GET /doctors/:doctor_id/patients`: Get patients (unique) associated with doctor by id
  - `GET /doctors/search/:doctor_lastname`: Get doctor object using the lastname

- `GET /patients`: Get patients
  - `POST /patients/`: Create new patient
  - `PATCH /patients/:patient_id`: Update patient by id
    - Updating: firstname, lastname, address, city, state, phone, email
  - `GET /patients/:patient_id`: Get patient by id
  - `GET /patients/:patient_id/appointments`: Get appointments associated with patient by id
  - `GET /patients/:patient_id/doctors`: Get doctors (unique) associated with patient by id

## Directory:

```
.
├── CONTRIBUTING.md
├── Gemfile
├── Gemfile.lock
├── LICENSE.md
├── README.md
├── Rakefile
├── app
│   ├── controllers
│   │   └── application_controller.rb
│   └── models
│       ├── appointment.rb
│       ├── doctor.rb
│       └── patient.rb
├── config
│   ├── database.yml
│   └── environment.rb
├── config.ru
├── db
│   ├── development.sqlite3
│   ├── migrate
│   │   ├── 20220415214412_create_doctors.rb
│   │   ├── 20220415214417_create_patients.rb
│   │   └── 20220415214424_create_appointments.rb
│   ├── schema.rb
│   └── seeds.rb
├── diagram.png
└── spec
    └── spec_helper.rb

7 directories, 21 files
```

## Getting Started

### Backend Setup

You can start your server with:

```console
$ bundle exec rake server
```

This will run your server on port
[http://localhost:9292](http://localhost:9292).
