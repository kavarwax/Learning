class Eleve
  attr_accessor :nom, :examens

  def initialize(nom)
    @nom = nom
  end

  def moyenne
    total = 0
    examens.each do |examen|
      total += examen.note
    end
    total / examens.size
  end
end

class Examen
  attr_accessor :nom, :note

  def initialize(nom,note)
    @nom = nom
    @note = note
  end
end


mon_eleve = Eleve.new("Billy")
maths = Examen.new("maths", 10.0)
philo = Examen.new("philo", 15.0)
histoire = Examen.new("histoire", 14.0)

mon_eleve.examens = [maths, philo, histoire]

puts "Examens de #{mon_eleve.nom}\n\n"
mon_eleve.examens.each do |examen|
  puts examen.nom
  puts examen.note
  puts "============="
end

puts "Moyenne de #{mon_eleve.nom} = #{mon_eleve.moyenne}"
