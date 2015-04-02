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

instructor_1 = Instructor.new("Chris")
student_1 = Student.new("Cristina")

puts instructor_1
puts student_1

puts instructor_1.teach
puts student_1.teach

# => Since .teach is part of the Instructor class, it cannot be called to the Student class,
# => therefore puts student_1.teach returns an error. If the teach method were in the parent Person
# => class, it could be called to both Instructor and Student. In this case, the output for the Student
# => class should be puts student_1.learn
