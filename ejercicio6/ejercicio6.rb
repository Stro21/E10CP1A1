# rubocop:disable ClassVars

# This is the module of a test.
module Test
  def result(nota1, nota2)
    if ((nota1 + nota2) / 2.0).round(1) >= 4
      puts 'Estudiante aprobado'
    else
      puts 'Estudiante reprobado'
    end
  end
end

# This is the module of Attendance.
module Attendance
  def student_quantity(quantity)
    puts quantity
  end
end

# This is a class of a Student.
class Student
  include Test
  include Attendance
  attr_reader :grade1, :grade2
  @@quantity = 0
  def initialize(nombre, nota1 = 4, nota2 = 4)
    @name = nombre
    @grade1 = nota1
    @grade2 = nota2
    @@quantity += 1
  end

  def self.quantity
    @@quantity
  end
end

data = File.open('student_list.txt', 'r') { |file| file.readlines.map(&:chomp) }
data.each do |line|
  stu = line.split(', ')
  nombre, nota1, nota2 = stu
  student = Student.new(nombre, nota1.to_f, nota2.to_f)
  student.result(student.grade1, student.grade2)
  student.student_quantity(Student.quantity) if Student.quantity == 10
end
# student = Student.new('Eduardo')
# student.result(student.grade1, student.grade2)
# puts Student.quantity

# rubocop:enable ClassVars
