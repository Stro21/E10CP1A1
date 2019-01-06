# This is the class name.
class MiClase
  attr_writer :name
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def self.saludar
    'Hola! Soy la clase MiClase'
  end
end

c = MiClase.new('Clase Uno')
puts c.name
c.name = 'Nombre Nuevo'
puts MiClase.saludar
