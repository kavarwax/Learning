emails = [
	"bob@bob.com",
	"jane@hello.com"
]

if emails.size == 0
	puts "J'ai aucun email"
elsif emails.size == 1
	puts "J'ai 1 email"
else
	puts "J'ai plus d'un email"
end

emails.each do |email|
	puts email
	if email == "bob@bob.com" || email == "jane@hello.com"
		puts "Hello !!"
	end
end