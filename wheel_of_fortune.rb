class WheelOfFortune
  attr_reader :theme, :phrase, :guesses
  
  def initialize(hash)
    @theme = hash[:theme]
    @phrase = hash[:phrase]
    @guesses = []
    @guessed_letters = []
  end

  def to_s
    @phrase.gsub!(/\w/, '_').chars
    return @phrase
  end

  def can_i_have?(input)
    lowercase_input = input.downcase 
    lowercase_phrase = @phrase.downcase
    @guesses.push(input)
    if lowercase_phrase.include? lowercase_input
      return true 
    else 
      return false
  end
end

  def game_over?
  @noletters = @phrase.length
  if @noletters > 0
    return true
  end
   else 
    return false
end
end


# Checks to see if we executed this file from the command-line
# e.g. `ruby simple_jepordy.rb`
if __FILE__ == $0

  # DRIVER CODE
  j = WheelOfFortune.new( {theme: "card games", phrase: "Go fish"} )
  j.can_i_have?("g")
  j.can_i_have?("o")
  p j
  puts j # calls j.to_s

end
