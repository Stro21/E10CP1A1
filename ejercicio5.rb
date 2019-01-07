# rubocop:disable MutableConstant

# Este es una clase Herviboro.
module Herviboro
  DEFINIR = 'Sólo me alimento de vegetales!'

  def self.definir
    DEFINIR
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
class Conejo < Animal
  include Herviboro
  def initialize(name)
    @name = name
  end
end

conejo = Conejo.new('Bugs Bunny')
puts conejo.saludar
puts conejo.dieta
puts Herviboro.definir

# rubocop:enable MutableConstant
