require "pry"
require_relative 'person'
require_relative 'checksplitter'

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

  def split_outing( bill_w_tax, subtotal, percent, *members_present )
    outing_split = Checksplitter.new(bill_w_tax, subtotal, members_present.length, percent)
    amount_per_person = outing_split.solution
    
    members_present.each do |name| 
      if @members.has_key?(name)
        @members[name] += amount_per_person 
      else
        add_member(name)
        @members[name] = amount_per_person
      end
    end 
    @members
  end
  
  def treater_outing( bill_w_tax, subtotal, percent, member )
    outing_split = Checksplitter.new(bill_w_tax, subtotal, 1, percent)
    amount_per_person = outing_split.solution
    
    treater = member 
      if @members.has_key?(treater)
        @members[treater] += amount_per_person 
      else
        add_member(treater)
        @members[treater] = amount_per_person
      end
    @members
  end
    
  def add_outing_attendance(location, *members_present )
    @outings[location] = members_present
    puts @outings 
  end



end  

binding.pry