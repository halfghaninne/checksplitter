require "pry"

class Checksplitter
  def initialize (billwtax, totalbill)
    @persons = nil
    @billwtax = billwtax
    @bill = totalbill
    @percent = 20 
  end
  
  def persons
    @persons
  end
  
  def percent
    @percent
  end
end

binding.pry

  
  
    