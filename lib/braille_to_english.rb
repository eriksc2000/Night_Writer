class BrailleToEnglish 

  def initialize
    @dictionary = {
      ["0....."] => "a",
      ["0.0..."] => "b"
    }
  end 
      
  
  def translate(message)
    braille_translation = message.map do |letter|
      @dictionary[letter]
    end
  end 
  
  def seperate_braille_into_chunks(braille_text)
    test_array = []
    braille_letters = []
    braille_text.chars.each_slice(2) do |letter_array|
      braille_letters << letter_array
      test_array << @dictionary[braille_letters]
      braille_letters.join
    end
    braille_letters.join
  end
  
  def translate_to_text(braille_text)
    characters = seperate_braille_into_chunks(braille_text)
    braille_translation = characters.map do |character|
      @dictionary[character]
    end
    return braille_translation.join
  end
    
end