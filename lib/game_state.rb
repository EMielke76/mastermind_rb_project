require 'rspec'

class GameState

  attr_reader :secret_code, :guess

  def initialize
    @secret_code = []
  end


#returns a secret code
  def secret_code

    a = ['g', 'b', 'y', 'r']

    4.times do

      b = a.sample
      @secret_code << b

    end

    return @secret_code

  end

#prompts the user to make a guess and change into an array of letters
  def ask_for_guess
    #
    # puts "I have generated a beginner sequence with four elements made up of:"\
    # "(r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the"\
    # " game."

    puts "What's your guess?"

    guess_string = gets.chomp
    @guess = guess_string.split


    puts "your guess is #{@guess}"

  end

game1 = GameState.new
game1.ask_for_guess


# #given @guess, call for appropriate method for response
  # def respond_to_guess
  #
  #   puts "respond to testing"
  #
  # end

# #quit the game if guess == 'q' or 'quit'
#   def quit
#
#   end
#
# #display the secret code if @guess == ‘c’ or ‘cheat’
#   def cheat
#
#   end
#
# #display appropriate message and make them try again for invalid input
# #if @guess > 4 or @guess < 4 or @guess contains illegitimate char, display appropriate message
#   def invalid_input
#
#   end
#
# #if @guess == secret_code, end the game by calling the EndGame class??
#   def correct_guess
#
#   end
#
# #tell the user how many correct letters in how many correct locations and
# #call ask_for_guess
#   def valid_input
#
#   end

end
