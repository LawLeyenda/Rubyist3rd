class Dice
  attr_accessor :numberOfRolls, :count

  def initialize(numberOfRolls)
    @numberOfRolls = numberOfRolls
    @count = Array.new(12) { |n| n = 0}
  end

  def roll()
    x = 0
    while( x < @numberOfRolls) do
    roll = rand(12)
    @count[roll] += 1
      x = x + 1
      end
  end
  
  def display()
    @count.each { |x| puts "#{((x.to_f/@numberOfRolls) * 100).round(2)}%"  }
  end
end

dice1 = Dice.new(7305)

dice1.roll
p dice1.count
dice1.display