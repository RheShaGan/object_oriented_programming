class Person
	attr_accessor :name

	def initializer(name) #code still worked without this, why?
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

instructor = Instructor.new
instructor.name = "Chris"
puts instructor.greeting
puts instructor.teach

student = Student.new
student.name = "Cristina"
puts student.greeting
puts student.learn

puts student.teach #this doesn't work because the student object doesn't inherit from the Instructor class. 

