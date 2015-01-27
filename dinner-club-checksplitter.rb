require "pry"

#SCRATCH WORK YO

DinnerClub = {Hamza: bal1, Khalil: bal2, Selima: bal3, Alex: bal4}

=begin
class DinnerClubTotals
  def initialize(event)
    @event = event
    @members = []
    add_to_total("Beginning Balance", 0)
  end
  
  def add_to_total(name, amount)
    @
  end
  
end
=end

#SCRATCH WORK YO

class DinnerClubTotals

end

#SCRATCH WORK YO
  
  
class Checksplitter
  def initialize(bill_w_tax, subtotal, persons, percent)
    @persons = persons
    @bill_w_tax = bill_w_tax
    @subtotal = subtotal
    @percent = percent 
  end
  
  def persons
    @persons
  end
  
  def percent
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

#Scratch additions

def members_present(name1, name2, name3)
    @memberspresent= Array.new
end


def assign_balances
  @members = {}
  @members[members_present] = solution
  print @members
end
  

end



binding.pry

  
  
    