# 30 Days of Code. Day 23: BST Level-Order Traversal

=begin
Sample Input
6
3
5
4
7
2
1

Sample Output
3 2 5 1 4 7
=end

puts "Sample Input\n6\n3\n5\n4\n7\n2\n1\n\n"
puts "Sample Output\n3 2 5 1 4 7\n"

class Node
    attr_accessor :left,:right,:data
  def initialize data
      @left=@right=nil
      @data=data
    end
end
class Solution
    def insert (root,data)
        if root==nil
            return Node.new(data)
        else
            if data<=root.data
                cur=self.insert(root.left,data)
                root.left=cur
            else
                cur=self.insert(root.right,data)
                root.right=cur
            end
        end
        return root
    end

    def levelOrder(root)
      #Write your code here
      q = Array.new
      temp = root
      result = ''
      
      while temp != nil || q.length > 0 do
        if temp != nil
          result += "#{temp.data} "
          q.push temp.left
          q.push temp.right
        end

        temp = q.shift
      end
      
      puts result.strip
    end
end

myTree=Solution.new
root=nil

puts "\nInput:"

T=gets.to_i
for i in 1..T
    data=gets.to_i
    root=myTree.insert(root,data)
end

puts "\nOutput:"   
myTree.levelOrder(root)