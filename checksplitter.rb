require 'pry'

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
  
  attr_reader :bill_w_tax, :subtotal
  
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
  
  def persons
    if @persons < 0
      @persons *= -1
    elsif @persons == 0
      @persons = 1
    end
    @persons
  end
  
  def percent
    # if @percent < 0
    #   @percent *= -1
    # end
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
  
  def solution
    sub_per_person + (percent * sub_per_person) + share_of_tax
  end

end    