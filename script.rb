class Name 
  def generate
    name = Array.new(rand(4..12))
    charVowels = ["a", "e", "i", "o", "u", "y"]
    charConsonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "z"]
    
    charFirst = rand(0..1)
    if charFirst == 0
      name[0] = charVowels[rand(charVowels.length)]
    else
      name[0] = charConsonants[rand(charConsonants.length)]
    end

    (1..name.length-1).each do |index|
      if charVowels.include?(name[index-1])
        charNext = rand(0..1)
        if charNext == 0 && charConsonants.include?(name[index-2])
          name[index] = charVowels[rand(charVowels.length)]
        else
          name[index] = charConsonants[rand(charConsonants.length)]
        end
      else
        name[index] = name[index] = charVowels[rand(charVowels.length)]
      end
    end
    
    puts name.join("").capitalize
  end

end

newName = Name.new

newName.generate
