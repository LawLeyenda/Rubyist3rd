module MyFirstModule
  def ruby_version
    system("which ruby")
  end
end

class ModuleTester
  include MyFirstModule
  
  def sayHi
    puts "Hi"
  end
  
  def sayHi
    puts "Bye"
  end
end

mt = ModuleTester.new
mt.ruby_version

puts ModuleTester.ancestors