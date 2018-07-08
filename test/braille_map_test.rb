require 'minitest/autorun'
require 'minitest/pride'
require './lib/braille_map'

class BrailleMapTest < Minitest::Test 
  
  def test_it_exists
  braille = BrailleMap.new 
  
  assert_instance_of BrailleMap, braille 
  end 
end 