require 'faker'

100.times do |patient|
	patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: rand(1..City.count))
end

50.times do |doctor|
	doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality_id: rand(1..Speciality.count), city_id: rand(1..City.count))
end

40.times do |appointment|
	rdv = Appointment.create!(patient_id: rand(1..Patient.count), doctor_id: rand(1..Doctor.count), date:Faker::Date.forward, city_id: rand(1..City.count))
end

20.times do |city|
	city = City.create!(name: Faker::Address.city, postal_code: Faker::Address.postcode)
end

10.times do |speciality|
	spec = Speciality.create!(name: Faker::Dessert.variety)
end