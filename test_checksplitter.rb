require 'minitest/autorun'
require_relative 'checksplitter'
require 'pry'


class ChecksplitterTest < Minitest::Test
  
# Single Responsibility is very important here, due to symbolized output of the MiniTest.
# 
  def test_simple_input_with_expected_int_output
    cs = Checksplitter.new(15, 10, 5, 50)
    assert_equal(4, cs.solution)
  end
  
  def test_more_complex_but_correct_input_with_expected_output
    cs = Checksplitter.new(73.26, 68.52, 2, 20)
    assert_equal(43.482, cs.solution)
  end
  
  def test_for_negative_number_of_persons
    cs = Checksplitter.new(15, 10, -5, 50)
    assert_equal(4, cs.solution)
  end

  def test_for_zero_persons
    cs = Checksplitter.new(15, 10, 0, 50)
    assert_equal(20, cs.solution)
  end

  def test_for_negative_tippers
    cs = Checksplitter.new(15, 10, 5, -50)
    assert_equal(4, cs.solution)
  end
  
end










# # OLD METHOD OF TESTING:

# VERIFICATION TESTS: Assertation of a should statement
# # re-examine this code to make sure it is properly using a yoda conditional
#   def assert_equal (expected_value, actual_value)
#
#     actual_value
#
#     if actual_value == expected_value
#       puts "Test ran correclty"
#     else
#       puts "Test failed: got #{test1_amount_per_person}"
#       puts "Expected #{expected1}"
#     end
#
#   end


#10 bill w tax 10 bill subtotal (bc we are not accounting for tax in this test), 5 people, 50 percent tip
# expected1 = 3.0
# test1 = Checksplitter.new(10, 10, 5, 50)
# assert_equal( test1.solution, expected1)




# test1_amount_per_person = test1
#
# if test1_amount_per_person == expected1
#   puts "Test 1 ran correclty"
# else
#   puts "Test 1 failed: got #{test1_amount_per_person}"
#   puts "Expected #{expected1}"
# end
#
# #command+click allows you to have multiple cursors wherever you click.
# #1200 including tip, 12 people 20 percent tip
# test2 = Checksplitter.new(1200, 1200, 12, 20)
# test2_amount_per_person = test2.solution
# puts test2_amount_per_person
#
 
 