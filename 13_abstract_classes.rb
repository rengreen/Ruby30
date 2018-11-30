# 30 Days of Code. Day 13: Abstract Classes

=begin
Sample Input
The Alchemist
Paulo Coelho
248

Sample Output
Title: The Alchemist
Author: Paulo Coelho
Price: 248
=end

puts "Sample Input\nThe Alchemist\nPaulo Coelho\n248\n\n"
puts "Sample Output\nTitle: The Alchemist\nAuthor: Paulo Coelho\nPrice: 248\n"

puts "\nInput:"

## This is a **simulation** of an abstract class provided at user request. ##
class Book
    attr_accessor :title
    attr_accessor :author
    
    def initialize(title, author)
        raise 'You cannot instantiate an abstract class.'
    end
    
    def display
        raise 'You must override this method in your implementing class.'
    end
end

class MyBook < Book
    attr_accessor :price

    #   Class Constructor
    #   
    #   Parameters:
    #   title - The book's title.
    #   author - The book's author.
    #   price - The book's price.
    #
    # Write your constructor here
    def initialize(title, author, price)
        @title = title
        @author = author
        @price = price
    end
    
    #   Function Name: display
    #   Print the title, author, and price in the specified format.
    #
    # Write your function here
    def display
        puts "Title: #{@title}"
        puts "Author: #{@author}"
        puts "Price: #{@price}"
    end
end
title = gets
author = gets
price = gets

new_novel = MyBook.new(title, author, price)

puts "\nOutput:"    
new_novel.display