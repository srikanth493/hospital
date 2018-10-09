# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Patient.delete_all
10.times do
	@dob=Faker::Date.birthday(0, 65)
	@age=Time.now.year - @dob.year
	if 
		@age < 18 
		Patient.create(name: "Master. " + Faker::Name.middle_name , dob: @dob, age: @age, 
			gender: Faker::Gender.binary_type)
	else
		Patient.create(name: "Mr. " + Faker::Name.name, dob: @dob, 
			age: @age, gender: Faker::Gender.binary_type)	
	end
end

Physician.delete_all
10.times do
	@dob=Faker::Date.birthday(30, 65)
	@age=Time.now.year - @dob.year
	@exp= @age-29
	Physician.create(name: "Dr. " + Faker::Name.name, age: @age, expeeriance: @exp)
end

Bill.delete_all
10.times do
	@invoice_no= "AB"+ rand(0000..99999).to_s
	@bill_date= Time.now.to_date
	@patient_id=Patient.all
	Bill.create(invoice_no: @invoice_no, bill_date: @bill_date , 
		amount: Faker::Number.within(1000..10000) , patient_id: @patient_id.ids) 
end

#Appointment.delete_all
#10.times do
#	@patient=Patient.all
#	@physician=Physician.all
#Appointment.create(appointment_date: Faker::Date.forward(7) , patient_id: @patient. name, physician_id: @physician.name)
#end















