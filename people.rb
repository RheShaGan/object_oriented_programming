class Person
	attr_accessor :name

	def initialize(name) #code still worked without this, why?
		@name = name
	end

	def greeting
		"Hi my name is #{name}."
	end
end


class Student < Person
	def learn
		"I get it!"
	end
end


class Instructor < Person
	def teach
		"Everything in Ruby is an Object."
	end
end

instructor = Instructor.new("Chris")
puts instructor.greeting
puts instructor.teach

student = Student.new "Cristina"
puts student.greeting
puts student.learn


