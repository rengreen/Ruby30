# 30 Days of Code. Day 12: Inheritance

=begin
Sample Input
Heraldo Memelli 8135627
2
100 80

Sample Output
Name: Memelli, Heraldo
ID: 8135627
Grade: O
=end

puts "Sample Input\nHeraldo Memelli 8135627\n2\n100 80\n\n"
puts "Sample Output\nName: Memelli, Heraldo\nID: 8135627\nGrade: O\n"

class Person
	def initialize(firstName, lastName, id)
		@firstName = firstName
		@lastName = lastName
		@id = id
	end
	def printPerson()
		print("Name: ",@lastName , ", " + @firstName ,"\nID: " , @id)
	end
end

class Student <Person
    #   Class Constructor
    #   
    #   Parameters:
    #   firstName - A string denoting the Person's first name.
    #   lastName - A string denoting the Person's last name.
    #   id - An integer denoting the Person's ID number.
    #   scores - An array of integers denoting the Person's test scores.
    #
    # Write your constructor here
    def initialize(firstName, lastName, id, scores)
        super(firstName, lastName, id)
        @scores = scores
    end

    #   Function Name: calculate
    #   Return: A character denoting the grade.
    #
    # Write your function here
    def calculate()
        output = @scores.inject(0){|sum,x|sum+x.to_i} / @scores.size
        if output >= 90
            return "O"
        elsif output >= 80
            return "E"
        elsif output >= 70
            return "A"
        elsif output >= 55
            return "P"
        elsif output >= 40
            return "D"
        else
            return "T"
        end
    end
end

puts "\nInput:"
input = gets.split()
firstName = input[0]
lastName = input[1]
id = input[2].to_i
numScores = gets.to_i
scores = gets.strip().split().map!(&:to_i)
s = Student.new(firstName, lastName, id, scores)

puts "\nOutput:"
s.printPerson           
print("\nGrade: " + s.calculate)