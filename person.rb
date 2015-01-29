class Person
  
  def initialize(name)
    @name = name
    @amount_spent = 0
  end
  
  attr_reader :name, :spending_amount
  
  def spend(amount)
    @amount_spent += amount
  end
  
end
