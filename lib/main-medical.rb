require "pry"
require_relative 'doctor'
require_relative 'patient'
require_relative 'appointment'

# DOCTORS
daphne = Doctor.new("DAPHNE")
isabel = Doctor.new("ISABEL")

# PATIENTS
marcelo = Patient.new("MARCELO")
marlon = Patient.new("MARLON")
danyel = Patient.new("DANYEL")

# APPOINTMENTS
new_appointment_1 = Appointment.new('January 1st, 2020', marcelo, daphne)
new_appointment_2 = Appointment.new('January 31st, 2020', marlon, daphne)
isabel.new_appointment(marlon, 'March 1st, 2020')
danyel.new_appointment(isabel, 'March 31st, 2020')

puts "========================================================"
puts "                  Doctor.appointments"
puts "========================================================"
pp daphne.appointments 
puts "========================================================"
puts "                  Doctor.patients"
puts "========================================================"
p daphne.patients 
puts ""
puts "========================================================"
puts "                  Patient.appointments"
puts "========================================================"
pp marlon.appointments 
puts "========================================================"
puts "                  Patient.patients"
puts "========================================================"
p marlon.doctors 