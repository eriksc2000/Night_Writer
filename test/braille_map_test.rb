require 'minitest/autorun'
require 'minitest/pride'
require './lib/braille_map'

class BrailleMapTest < Minitest::Test

  def test_it_exists
  braille = BrailleMap.new

  assert_instance_of BrailleMap, braille
  end

  def test_it_converts_single_character_into_braille
    braille = BrailleMap.new

    assert_equal "0.....", braille.translate("a")
  end
  
  def test_it_converts_multiple_characters_into_braille
    braille = BrailleMap.new 
    expected = "0.....0.0...00...."
    actual = braille.translate('abc')
    
    assert_equal expected, actual
  end
  
end
