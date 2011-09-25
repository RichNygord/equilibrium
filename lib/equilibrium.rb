#equilibrium.rb
# By Richard Nygord 
# Created 9/3/2011
# Modified 9/25/2011 to gemify and github it.
# Find an index in an array such that its prefix sum equals its suffix sum.
# Full description and examples are in: equilibrium.problem

class Array
  def equilibrium a = nil  # return first equilibrium position, or accumulate them in a
    l = 0
    r = self.inject(:+)
    self.each_with_index do |v, i|
      r -= v
      a ? a << i : (return i) if l == r
      l += v
    end
    a ? a : -1
  end

  def equilibrium_all         # return all equilibrium positions
    equilibrium []            # send in an Array to accumulate them
  end
end


