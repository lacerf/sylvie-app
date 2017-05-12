AdminUser.create(email: "lacerf@gmail.com",
									password: "password",
									password_confirmation: "password",
									first_name: "Fabio",
									last_name: "Lacerda")

100.times do |ticket|
	Ticket.create!(title: "My ticket - #{ticket}", 
	               details: "My ticket details - #{ticket}", 
	               start_date: Date.today, due_date: Date.today+7,
	               state: rand(0..5), priority: rand(0..4), user_id: 1)
end

puts "100 Tickets have been created"

tickets = Ticket.all
tickets.each do |ticket|
	if ticket.state == 'Completed'
		ticket.update!(complete_date: Date.today)
	end
end
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')