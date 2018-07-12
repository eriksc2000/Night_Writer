require 'minitest/autorun'
require 'minitest/pride'
require './lib/braille_to_english'
require 'pry'

class BrailleToEnglishTest < Minitest::Test 
  
  def test_it_exists
  braille = BrailleToEnglish.new 
  
  assert_instance_of BrailleToEnglish, braille 
  end 
  
  def test_it_can_translate_braille_to_single_character 
    braille = BrailleToEnglish.new 
  
    assert_equal "a", braille.translate(["0....."])
  end
  
  def test_it_can_split_braille_into_sub_chunks
    braille = BrailleToEnglish.new
    actual = braille.seperate_braille_into_chunks[("0.....")]
    expected = ["0.", "..", ".."]
    assert_equal expected, actual
  end
  
  def test_it_can_turn_braille_into_single_letter
    braille = BrailleToEnglish.new
    actual = braille.translate_to_text("0.....")
    expected = "a"
  
    assert_equal expected, actual 
  end

end