class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def to_s
    "Hi, my name is #{@name}!"
  end

end


class Student < Person

  def learn
    puts "I get it!"
  end

end

class Instructor < Person

  def teach
    puts "Everything in Ruby is an object!"
  end

end

student_1 = Student.new("Frank")

puts student_1
