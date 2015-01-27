require "pry"

class Checksplitter
  def initialize (billwtax, totalbill)
    @persons = nil
    @billwtax = billwtax.to_f
    @bill = totalbill.to_f
    @percent = nil 
  end
  
  def persons
    @persons
  end
  
  def percent
    @percent
  end
end
  
  
  
    