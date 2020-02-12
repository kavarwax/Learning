class Utilisateur
  attr_accessor :nom, :ami, :sexe
  
  def initialize(variable1, variable2)
	@nom = variable1
	@sexe = variable2
	puts "Initialization done"
  end
  
  def est_ami_avec(friend)
	ami.each do |un_ami|
		if friend == un_ami
			return true
		end
	end
	return false
  end
end


alice = Utilisateur.new("Alice", "F")
alice.ami = "Bob", "Jane", "Luc"

bob = Utilisateur.new("Bob", "H")
bob.ami = "Jane", "Marc"

jane = Utilisateur.new("Jane", "F")
jane.ami = "Alice", "Marc"

ami_test = "Luc"

puts "Alice a #{alice.ami.size} amis."
puts "Est ce que Alice (sexe = #{alice.sexe}) est ami avec #{ami_test}?"
if alice.est_ami_avec(ami_test) == true
	puts "Oui"
elsif !alice.est_ami_avec(ami_test)
	puts "Non"
else
	Puts "Something went wrong..."
end