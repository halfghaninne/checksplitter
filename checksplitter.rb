require 'pry'

# Class: Checksplitter
#
# Splits check evenly among diners, adds tip.
#
# Attributes:
# + @persons    - Integer: number of diners.
# + @bill_w_tax - Float: Total bill, including tax.
# + @subtotal   - Float: Subtotal of meal, before tax.
# + @percent    - Integer or Float: User-provided precentage of tip, ex: 20.
#
# Public Methods:
# + percent
# + sub_per_person
# + share_of_tax
# + solution

class Checksplitter
  def initialize(bill_w_tax, subtotal, persons, percent)
    @persons = persons
    @bill_w_tax = bill_w_tax
    @subtotal = subtotal
    @percent = percent 
  end 
  
  attr_reader :bill_w_tax, :subtotal
  
  # Public: .persons
  # Assigns variable persons for @persons; If @persons is an undesirable (negative or 0) value, reassigns.
  # 
  # Parameters: 
  # + @persons - Integer: User-provided Integer, ex: 5. 
  #
  # Returns:
  # Integer: @persons, -@persons, and/or 1. 
  #
  # State Changes:
  # Changes value of @persons for special "problem" cases (if @persons = 0 or negative value).
  
  def persons
    if @persons < 0
      @persons *= -1
    elsif @persons == 0
      @persons = 1
    end
    persons
  end
  
  # Public: .percent
  # Reassigns if @percent is an undesirable (negative) value; converts user-provided @percent to a value helpful for math operations; assigns variable percent for @percent, 
  # 
  # Parameters: 
  # + @subtotal - Integer or Float: User-provided percentage to tip, ex: 20.
  #
  # Returns:
  # Float: Number converted to float to perform mathematical operations.
  #
  # State Changes:
  # Changes value of @percent for special "problem" cases (if percent < 0).
  
  def percent
    # if @percent < 0
    #   @percent *= -1
    # end
    @percent * 0.01
  end
  
  # Public: .sub_per_person
  # Divides subtotal of check evenly among diners.
  # 
  # Parameters: 
  # None.
  #
  # Returns:
  # Float: subtotal / persons
  #
  # State Changes (any changes to attributes):
  # None.
  
  def sub_per_person
    subtotal / persons
  end
  
  # Public: .share_of_tax
  # Divides tax (bill_w_tax - subtotal) evenly among diners.
  # 
  # Parameters: 
  # None.
  #
  # Returns:
  # Float: (bill_w_tax - subtotal) / persons
  #
  # State Changes (any changes to attributes):
  # None.
  
  def share_of_tax
    (bill_w_tax - subtotal) / persons
  end
  
  # Public: .solution
  # Adds share of bill-before-tax, individual tip, and share-of-tax to give an individual total
  # 
  # Parameters: 
  # None.
  #
  # Returns:
  # Float: Individual portion of bill.
  #
  # State Changes (any changes to attributes):
  # None.
  
  def solution
    sub_per_person + (percent * sub_per_person) + share_of_tax
  end

end    