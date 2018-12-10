# 30 Days of Code. Day 24: More Linked Lists

=begin
Sample Input
6
1
2
2
3
3
4

Sample Output
1 2 3 4 
=end

puts "Sample Input\n6\n1\n2\n2\n3\n3\n4\n\n"
puts "Sample Output\n1 2 3 4\n"

class Node

    attr_accessor :data,:next

  def initialize data
        @data = data
        @next = nil
    end
end

class Solution

    def removeDuplicates(head)
      #write your code here  
      removeDuplicatesRec(head)
      
      return head
    end

    def removeDuplicatesRec(node)
      return unless node
      
      while node.next && node.data == node.next.data
        node.next = node.next.next
      end
      
      removeDuplicatesRec node.next
    end

    def insert(head,value)
        p=Node.new(value)
        if head==nil
             head=p
         elsif head.next==nil
             head.next=p
         else  
             current = head
         while current.next != nil
             current = current.next
       end 
       current.next = p
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

head=mylist.removeDuplicates(head)

puts "\nOutput:"    
mylist.display(head)