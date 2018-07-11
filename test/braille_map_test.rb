require 'minitest/autorun'
require 'minitest/pride'
require './lib/braille_map'
require 'pry'

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
    
    assert_equal "0.....0.0...00....", braille.translate('abc')
  end
  
  def test_it_formats_into_correct_lines
    braille = BrailleMap.new
    braille.translate('a')
    
    assert_equal "0.\n..\n..", braille.format 
  end
  
  def test_it_formats_multiple_characters_into_correct_lines
    braille = BrailleMap.new
    braille.translate('aaa')
    
    assert_equal "0.0.0.\n......\n......", braille.format 
  end
  
end
