# rubocop:disable ClassVars

# This is the class of a Vehicle
class Vehicle
  attr_accessor :model, :year, :start
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
  end
end

# This is inherence class of Vehicle.
class Car < Vehicle
  @@intances = 0
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
    @@intances += 1
  end

  def engine_start
    @start = true
    puts 'El motor se ha encendido!'
  end

  def self.intances_counter
    @@intances
  end
end

10.times do
  Car.new('Sedan', 2014)
end
puts Car.intances_counter

# rubocop:enable ClassVars
