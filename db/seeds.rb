100.times do |ticket|
	Ticket.create!(title: "My ticket - #{ticket}", 
	               details: "My ticket details - #{ticket}", 
	               start_date: Date.today, 
	               state: 0, priority: 0)
end

puts "100 Tickets have been created"

AdminUser.create(email: "lacerf@gmail.com",
									password: "password",
									password_confirmation: "password",
									first_name: "Fabio",
									last_name: "Lacerda")