# 30 Days of Code. Day 4: Class vs. Instance

=begin
Sample number of cases:
4
Case 1:
-1
Age is not valid, setting age to 0.
You are young.
You are young.

Case 2:
10
You are young.
You are a teenager.

Case 3:
16
You are a teenager.
You are old.

Case 54:
18
You are old.
You are old.

=end

puts "Sample number of cases:\n4\n"
puts "Case 1:\n-1\nAge is not valid, setting age to 0.\nYou are young.\nYou are young.\n"
puts "Case 2:\n10\nYou are young.\nYou are a teenager.\n"
puts "Case 3:\n16\nYou are a teenager.\nYou are old.\n"
puts "Case 4:\n18\nYou are old.\nYou are old.\n"


class Person
  attr_accessor :age

  def initialize(initialAge)
    if initialAge<0
      puts "Age is not valid, setting age to 0."
      initialAge=0
    end
    @age=initialAge
  end

  def amIOld()
    if @age<13
      text="You are young."
    elsif @age<18
      text="You are a teenager."
    else
      text="You are old."
    end

    puts text
  end

  def yearPasses()
    return @age += 1
  end

end

puts "\nNumber of cases:"
T=gets.to_i
for i in (1..T)do
	puts "\nCase #{i}:"
    age=gets.to_i
    p=Person.new(age)
    p.amIOld()
    for j in (1..3)do
        p.yearPasses()
      end
      p.amIOld
    end
