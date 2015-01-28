require "pry"

# Class: DinnerClub
#
# Tracks members of certain dinner clubs and their total payments.
# Tracks their spending.
# Tracks outings and attendance.
# Allows individual members to "treat" the group and foot the bill.
#
# Attributes:
# @names    -
#


class DinnerClub
  def initialize(*member_names)
    @outings = {}
    @members = {}
    member_names.each {|member| @members[member] = 0.0}
  end
  
  def add_member(member_name)
    @members[member_name] = 0.0
    @members
  end
  
  # SCRATCH WORK - absolved into add_outing
  # def add_cost_to_balance(amount, *members_present)
  #   members_present.each do |name|
  #     if @members.has_key?(name)
  #       @members[name] += amount_per_person
  #     else
  #       @members[name] = amount_per_person
  #   end
  # end

  def add_outing( bill_w_tax, subtotal, percent, *members_present )
    outing_split = Checksplitter.new(bill_w_tax, subtotal, members_present.length, percent)
    amount_per_person = outing_split.solution
    
    members_present.each do |name| 
      if @members.has_key?(name)
        @members[name] += amount_per_person
      else
        @members[name] = amount_per_person
      end
    end 
    @members
  end

  def get_spending_report(name)
    puts members[name]
  end
  
  def treater
  end
  
end

binding.pry

#TEST CODE
# badgrlzclub = DinnerClub.new("Ava", "Alex",  "Ingrid")
# puts badgrlzclub.inspect
# badgrlzclub.add_cost_to_balance(30, "Alex", "Ava")
# puts badgrlzclub.inspect

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
# #percent
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
  
  attr_reader :persons, :bill_w_tax, :subtotal
  # I assumed in my Class documentation that these are not public methods
  
  # Public: #percent
  # Converts user-provided precent to a value helpful for math operations
  # 
  # Parameters: 
  # @percent - Integer or Float: User-provided percentage to tip, ex: 20
  #
  # Returns:
  # Float: Number converted to float to perform operations
  #
  # State Changes:
  # None.
  
  def percent
    @percent * 0.01
  end
   
  # Public: #sub_per_person
  # Divides subtotal of check among diners.
  # 
  # Parameters: 
  # subtotal - Float: User-provided subtotal of bill, ex: 150.67
  # persons - Integer: Number of diners
  #
  # Returns:
  # Float: subtotal / persons
  #
  # State Changes (any changes to attributes):
  # None.
  
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

end

  
bindng.pry
    