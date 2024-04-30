class Person
    def initialize (name)
      @name = name
    end
    def print_name()
      print "name is #{@name}"
    end
  end
class Student < Person
  def initialize (name,roll_number)
    @name = name
    @roll_number=roll_number
  end
  def print_roll()
    print " roll number is #{@roll_number}"
  end
end



def checkPerson()
  print "Are you a Person or Student? "
  input = gets.chomp.to_str.capitalize()
  if input == "Person"
    print "Enter a name : "
    personName = gets.chomp.to_str
    person = Person.new(personName)
    person.print_name()
  elsif input == "Student"
    print "Enter your name : "
    studentName = gets.chomp.to_str
    print "Enter your roll number : "
    studentRoll = gets.chomp
    student = Student.new(studentName,studentRoll)
    student.print_name()
    student.print_roll()
  end
end
checkPerson()





