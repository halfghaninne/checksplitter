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
  
  
# Class: Checksplitter
#
# Splits check evenly among diners, adds tip.
#
# Attributes:
# @persons    - Integer: number of diners.
# @bill_w_tax - Float: Total bill, including tax.
# @subtotal   - Float: Subtotal of meal, before tax.
# @percent    - Integer or Float: User-provided precentage of tip, ex: 20.
#
# Public Methods:
# #sub_per_person
# #share_of_tax
# #solution
# #xxxxxxx
# #xxxxxxx
# #xxxxxxx
# #xxxxxxx
# #xxxxxxx
# #xxxxxxx
# #xxxxxxx
# #xxxxxxx

class Checksplitter
  def initialize(bill_w_tax, subtotal, persons, percent)
    @persons = persons
    @bill_w_tax = bill_w_tax
    @subtotal = subtotal
    @percent = percent 
  end
  
  # Documentation
  # Documentation
  # Documentation
  
  attr_reader :persons, :bill_w_tax, :subtotal
  
  # Documentation
  # Documentation
  # Documentation
  
  def percent
    @percent * 0.01
  end
   
  # Documentation
  # Documentation
  # Documentation
  
  def sub_per_person
    subtotal / persons
  end
  
  # Documentation
  # Documentation
  # Documentation
  
  def share_of_tax
    (bill_w_tax - subtotal) / persons
  end
  
  # Documentation
  # Documentation
  # Documentation
  
  def solution
    sub_per_person + (percent * sub_per_person) + share_of_tax
  end
  
  # Documentation
  # Documentation
  # Documentation
    
  def members_present(name1, name2, name3)
    @memberspresent= Array.new
  end
  
  # Documentation
  # Documentation
  # Documentation
  
  def assign_balances
    @members = {}
    @members[members_present] = solution
    print @members
  end

end



binding.pry

  
  
    