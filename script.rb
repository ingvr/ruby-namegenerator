class Name 
  def generate
    nameString
  end

  private

  $charVowels = ["a", "e", "i", "o", "u", "y"]
  $charConsonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "z"]

  def nameString
    name = Array.new(rand(2..12))
    charFirst = rand(0..1)
    if charFirst == 0
      name[0] = randVowels 
    else
      name[0] = randConsonants 
    end
    (1..name.length-1).each do |index|
      if $charVowels.include?(name[index-1])
        charNext = rand(0..1)
        if charNext == 0 && $charConsonants.include?(name[index-2])
          name[index] = randVowels 
        else
          name[index] = randConsonants 
        end
      else
        name[index] = randVowels 
      end
    end
    name.join("").capitalize
  end

  def randVowels
    $charVowels[rand($charVowels.length)]  
  end

  def randConsonants
    $charConsonants[rand($charConsonants.length)]  
  end
end

newName = Name.new
puts newName.generate
