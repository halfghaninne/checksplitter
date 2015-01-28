require "pry"

class Checksplitter
  def initialize(bill_w_tax, subtotal, persons, percent)
    @persons = persons
    @bill_w_tax = bill_w_tax
    @subtotal = subtotal
    @percent = percent 
  end
  
  def persons
    # if @persons < 0
    #   @persons *= -1
    # end
    @persons
  end
  
  def percent
    # if @percent < 0
    #   @percent *= -1
    # end
    @percent * 0.01
  end
  
  def bill_w_tax
    @bill_w_tax
  end
  
  def subtotal
    @subtotal
  end
  
  def sub_per_person
    subtotal / persons
  end
  
  def share_of_tax
    (bill_w_tax - subtotal) / persons
  end
  
  def solution
    sub_per_person + (percent * sub_per_person) + share_of_tax
  end

end    