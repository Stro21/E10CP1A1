class Herviboro
  @@definir = 'Sólo me alimento de vegetales!'

  def self.definir
    @@definir
  end

  def dieta
    'Soy un Herviboro!'
  end
end

# Esta es una clase Animal.
class Animal
  def saludar
    'Soy un animal!'
  end
end

# Esta es una clase Conejo
class Conejo < Animal < Herviboro
  def initialize(name)
    @name = name
  end
end

conejo = Conejo.new('Bugs Bunny')
conejo.saludar
conejo.dieta
Herviboro.definir
