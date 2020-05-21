def caesar_cipher(string, shift)
  alphabet_downcase = ("a".."z").to_a
  alphabet_upcase = ("A".."Z").to_a
  new_string = ""
  
  string = string.split("")
  string.each do |element|
    if alphabet_downcase.include?(element)
      element_index = alphabet_downcase.index(element)

      element_index += shift
      element_index -= alphabet_downcase.length until element_index < 25 if shift > 0
      element_index += alphabet_downcase.length until element_index > -25 if shift < 0
      new_element = alphabet_downcase[element_index].to_s
      new_string += new_element
    elsif alphabet_upcase.include?(element) 
      element_index = alphabet_upcase.index(element)

      element_index += shift
      element_index -= alphabet_upcase.length until element_index < 25 if shift > 0
      element_index += alphabet_upcase.length until element_index > -25 if shift < 0
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

caesar_cipher("What a string!", -5)