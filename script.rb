def caesar_cipher(string, shift)
  alphabet_downcase = ("a".."z").to_a
  alphabet_upcase = ("A".."Z").to_a
  new_string = ""
  
  string = string.split("")
  string.each do |element|
    if alphabet_downcase.include?(element) # only downcase letters
      element_index = alphabet_downcase.index(element)

      element_index += shift
      element_index -= alphabet_downcase.length until element_index < 25 # alphabet's length counting from 0
      new_element = alphabet_downcase[element_index].to_s
      new_string += new_element
    elsif alphabet_upcase.include?(element) # only upcase letters
      element_index = alphabet_upcase.index(element)

      element_index += shift
      element_index -= alphabet_upcase.length until element_index < 25 # alphabet's length counting from 0
      new_element = alphabet_upcase[element_index]
      new_string += new_element
    else # other characters
      new_string += element
    end
  end
  string = string.join("")

  p alphabet_downcase
  p string
  p new_string
end

caesar_cipher("What a string!", 5)