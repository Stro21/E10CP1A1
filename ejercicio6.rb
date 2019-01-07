# This is the module of a test.
module Test
  def result(nota1, nota2)
    if (nota1 + nota2) / 2 >= 4
      puts 'Estudiante aprobado'
    else
      puts 'Estudiante reprobado'
    end
  end
end

# This is the module of Attendance.
module Attendance
end

# This is a class of a Student.
class Student
  include Test
  include Attendance
  def initialize(nombre, nota1 = 4, nota2 = 4)
    @name = nombre
    @grade1 = nota1
    @grade2 = nota2
  end
end
