puts "Top level"
puts "self is #{self}"

class C
  puts "Class definition block:"
  puts "self is #{self}"
  
  def self.x
    puts "Class method C.x:"
    puts "self is #{self}"
  end
  
  def m
    puts "Instance method C#m:"
    puts "self is #{self}"
  end
end

CC = C.new
puts CC.m
puts C.x

class D
  class << self
    def x
      puts "Class method: #{self}"
    end
  end
end

class E < D
end

DD = D.new
puts D.x
puts E.x

class F
  def set_v
    @v = "I am an instance variable and I belong to any instance of C."
  end
  
  def show_var
    puts @v
  end
  
  def self.set_v
    @v = "I am an instance variable and I belong to C."
  end
end

puts F.set_v
f = F.new
f.set_v
f.show_var

class G
  @v = "I am an instance variable at the top level of a class body"
  p @v
  
  class << G
    def printSomething
      puts "Class G printing something "
      end
  end
  def show_var
    puts "Here is the instance variable @v, belonging  to #{self}"
    p @v
  end
end


g = G.new
g.show_var
G.printSomething