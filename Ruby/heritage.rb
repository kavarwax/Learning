class Animal
  attr_accessor :nom
  def initialize(nom)
    @nom = nom
  end
end

class Chien < Animal
  def parler
    puts "#{nom}: Ouaf!"
  end
end

class Chat < Animal
  def parler
    puts "#{nom}: Miaou!"
  end
end

mon_chien = Chien.new("Paf le chien")
mon_chat = Chat.new("Pouf la chatte")

mon_chat.parler
mon_chien.parler