require 'pry'
class BrailleMap 
  

  def initialize
    @dictionary = {
      "a" => ["0.", "..", ".."],
      "b" => ["0.", "0.", ".."],
      "c" => ["00", "..", ".."],
      "d" => ["00", ".0", ".."],
      "e" => ["0.", ".0", ".."],
      "f" => ["00", "0.", ".."],
      "g" => ["00", "00", ".."],
      "h" => ["0.", "00", ".."],
      "i" => [".0", "0.", ".."],
      "j" => [".0", "00", ".."],
      "k" => ["0.", "..", "0."],
      "l" => ["0.", "0.", "0."],
      "m" => ["00", "..", "0."],
      "n" => ["00", ".0", "0."],
      "o" => ["0.", ".0", "0."],
      "p" => ["00", "0.", "0."],
      "q" => ["00", "00", "0."],
      "r" => ["0.", "00", "0."],
      "s" => [".0", "0.", "0."],
      "t" => [".0", "00", "0."],
      "u" => ["0.", "..", "00"],
      "v" => ["0.", "0.", "00"],
      "w" => [".0", "00", ".0"],
      "x" => ["00", "..", "00"],
      "y" => ["00", ".0", "00"],
      "z" => ["0.", ".0", "00"],
      " " => ["..", "..", ".."]
    }
    @long_string = ""
  end 
  
  def translate(message)
    braille_translation = message.chars.map do |character|
      @dictionary[character]
    end 
    @long_string = braille_translation.join
  end 
  
  def format
    intermed = @long_string.scan(/(..)(..)(..)/) 
    output = intermed.reduce({row_1: "", row_2: "", row_3: ""}) do |result, braille|
      result[:row_1] << braille[0]
      result[:row_2] << braille[1]
      result[:row_3] << braille[2]
      result
    end
    output.values.join("\n")
  end 
    
end