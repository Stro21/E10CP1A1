# name of the class
class MiClase
  def de_instancia
    puts 'Método de instancia!'
  end

  def de_clase
    puts 'Método de clase!'
  end
end

MiClase.new.de_instancia
MiClase.new.de_clase
