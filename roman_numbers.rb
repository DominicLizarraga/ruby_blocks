ROMAN = {
  "I" => 1,
  "IV" => 4,
  "V" => 5,
  "IX" => 9,
  "X" => 10,
  "XL" => 40,
  "L" => 50,
  "XC" => 90,
  "C" => 100,
  "CD" => 400,
  "D" => 500,
  "CM" => 900,
  "M" => 1000
}

def roman_to_integer(roman_string)
  number = 0
  string = roman_string.dup
  until string.size.zero?
    last_two_characters = p string[-2, 2]
    if ROMAN.key?(last_two_characters)
      number += ROMAN[last_two_characters]
      string.chop!
    else
      number += p ROMAN[string.slice(-1)]
    end
    string.chop!
  end
  number
end



puts roman_to_integer("XICDML")
