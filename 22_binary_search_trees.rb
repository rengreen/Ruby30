# 30 Days of Code. Day 22: Binary Search Trees

=begin
Sample Input
7
3
5
2
1
4
6
7

Sample Output
3
=end

puts "Sample Input\n7\n3\n5\n2\n1\n4\n6\n7\n\n"
puts "Sample Output\n3\n"

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

    def getHeight(root)
        root ? 1+[getHeight(root.left),getHeight(root.right)].max : -1
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
height=myTree.getHeight(root)

puts "\nOutput:"
print height