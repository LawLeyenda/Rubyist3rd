class Ticket
  
  VENUES = ["Convention Center", "Fairgrounds", "Town Hall"]
  attr_reader :venue, :date
  attr_accessor :price
  def initialize(venue)
    @venue = venue
  end
  
  def date= (date)
    year, month, day = date.split('-')
     year = year.to_i
    if(year > 99)
      @date = date
    else
      puts "Please enter a valid date in the form yyyy/mm/dd"
    end
  end
  
  def discount(amount)
    return ((1 - (amount/100.0)) * @price)
  end
end

def Ticket.most_expensive(*tickets)
  tickets.max_by(&:price)
end

th = Ticket.new("Town hall")
th.price = 100
puts "$#{"%.2f" % th.price}, #{th.venue}"

th1 = Ticket.new("Mayor's office")
th1.price = 50
puts "$#{"%.2f" % th1.price}, #{th1.venue}"

highest = Ticket.most_expensive(th1, th)
puts "#{highest.venue}"

puts Ticket::VENUES.to_s

Ticket::VENUES << "High School Gymnasium"

puts Ticket::VENUES.to_s

puts Ticket.is_a?(Object)