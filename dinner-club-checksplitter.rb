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
# + @outings    - Hash: Creates empty hash which will later be filled with hashes of attendance at each outing
# + @members    - Hash: Captures and assigns names (Strings) and assigns them a starting balance of 0.0 (Float)
#
# Public Methods:
# + add_member  
# + split_outing
# + treater_outing
# + add_outing_attendance


class DinnerClub
  def initialize(*member_names)
    @outings = {}
    @members = {}
    member_names.each {|member| @members[member] = 0.0}
  end
  
  # Public: .add_member
  # Adds member to @members Hash outside of those included in the class initialization argument; sets member's balance to 0.0.
  # 
  # Parameters: 
  # + @members - Hash: User-provided Hash in form {"String"=>0.0, "String"=>0.0,...}
  #
  # Returns:
  # Hash: Updated with String argument.
  #
  # State Changes:
  # Adds "String"=>0.0 key/value pairing to the @members Hash.
  
  def add_member(member_name)
    @members[member_name] = 0.0
    @members
  end
  
  # Public: .split_outing
  # Runs Checksplitter class on user-inputted information; adds solution to relevant keys' values in @members Hash
  # 
  # Parameters: 
  # + @members - Hash: User-provided Hash in form {"String"=>0.0, "String"=>0.0,...}
  #
  # Returns:
  # Hash: Updated balance values for each members_present.
  #
  # State Changes:
  # Resets balances for specific keys in @members Hash.

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
  
  # Public: .treater_outing
  # Calls Checksplitter class on user-inputted information - divides among a *single* member; adds solution to the relevant key's value in @members Hash
  # 
  # Parameters: 
  # + @members - Hash: User-provided Hash in form {"String"=>0.0, "String"=>0.0,...}
  #
  # Returns:
  # Hash: Updated balance value for specific member key.
  #
  # State Changes:
  # Resets balance for specific key in @members Hash.
  
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
    
  # Public: .add_outing_attendance
  # Populates @outing Hash, assigning location as key and members_present Array as its value .
  # 
  # Parameters: 
  # + @outings - Hash: User-provided Hash in form {"String"=>["String", "String", ...], ...}
  #
  # Returns:
  # Hash: Updated with members_present Array value for location key.
  #
  # State Changes:
  # Adds "String"=>["String", "String", ...] key/value pair to the @outings Hash.
    
  def add_outing_attendance( location, *members_present )
    @outings[location] = members_present
    puts @outings 
  end

end  

binding.pry