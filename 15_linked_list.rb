# 30 Days of Code. Day 15: Linked List

=begin
Sample Input
4
2
3
4
1

Sample Output
2 3 4 1
=end

puts "Sample Input\n4\n2\n3\n4\n1\n\n"
puts "Sample Output\n2 3 4 1\n"

class Node
    attr_accessor :data,:next

    def initialize data
        @data = data
        @next = nil
    end
end

class Solution

    def insert(head,value)
        #Complete this method
        if head.nil?
            head = Node.new(value)
        else    
            temp = head;
            while temp.next
                temp = temp.next
             end
              temp.next = Node.new(value)
        end
           return head
    end

    def display(head)
       current = head
       while current 
          print current.data," "
          current = current.next
       end
   end
end
       
mylist= Solution.new
head=nil

puts "\nInput:"
T=gets.to_i
for i in 1..T
    data=gets.to_i
    head=mylist.insert(head,data)
end

puts "\nOutput:"    
mylist.display(head)