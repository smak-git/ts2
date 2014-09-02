namespace :db do 
	desc "Fill database with sample data"
	task populate: :environment do
		#User.create!(name: "Example user", 
		#	email: "example@trueschool.co.in",
		#	password: "foobar",
		#	password_confirmation: "foobar")

		admin = User.create!(name:"Example user",
			email: "example@trueschool.co.in",
			password:"foobar",
			password_confirmation: "foobar",
			admin: true)

		99.times do |n|
			name = Faker::Name.name
			email = "example-#{n+1}@trueschool.co.in"
			password ="password"
			User.create!(name: name, email: email, password: password,
				password_confirmation: password)
		end
	end
end
