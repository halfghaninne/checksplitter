require "pry"

class Checksplitter
  def initialize(billwtax, subtotal, persons, percent)
    @persons = persons
    @billwtax = billwtax
    @subtotal = subtotal
    @percent = percent 
  end
  
  def persons
    @persons
  end
  
  def percent
    @percent * 0.01
  end
  
  def billwtax
    @billwtax
  end
  
  def subtotal
    @subtotal
  end
  
  def solution
    sub = (subtotal) / persons
    sharetax = (billwtax - subtotal) / persons
    total = sub + (percent * sub) + sharetax
    puts total
  end

end

new = Checksplitter.new(150, 108, 3, 20)
puts new.billwtax

binding.pry

  
  
    