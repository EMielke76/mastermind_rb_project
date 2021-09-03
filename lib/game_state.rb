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
    puts "I have generated a beginner sequence with four elements made up of:"\
    "(r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the"\
    " game."

    puts "What's your guess?"

    guess_string = gets.chomp

      if guess_string == ("q" or ("quit" or "Q"))
        puts "Thanks for playing!"
      elsif guess_string == ('c' or ("C" or "Cheat"))
        puts @secret_code
      else
        @guess = guess_string.split("")
      end


  end

  # game1 = GameState.new
  # game1.ask_for_guess

  # #display appropriate message and make them try again for invalid input
  # #if @guess > 4 or @guess < 4 or @guess contains illegitimate char, display appropriate message
  def invalid_input

    if (@guess.length != 4) or ((secret_code - available_letters).empty? == false)
      puts "Invalid input! Try again!"
      return false
    else
      return true
    end

  end

  #RUNNER FILE: if invalid_input returns false, go back to ask_for_guess.
  #RUNNER FILE: if invalid_input returns true, if guess is not correct, call correct_elements_calc and correct_index_pos
  #RUNNER FILE: then print out "#{@guess} has #{game1.correct_elements_calc} of the correct elements
  #RUNNER FILE: with #{game1.correct_index_pos} in the correct positions."
  #RUNNER FILE: write a method count_turn to count turns, then print "You've taken #{game1.count_turn} guess(es)."

  # #if @guess == secret_code, end the game by calling the EndGame class??
  #   def correct_guess
  #
  #   end
  #
  # #tell the user how many correct letters in how many correct locations and
   #



  def correct_elements_calc

    count = 0
    available_letters = ['r', 'g', 'b', 'y']

    availble_letters.each do |letter|
      if @secret_code.count(letter) == @guess.count(letter)
        count = count + @secret_code.count(letter)
      end
    end
    puts "You've guessed #{count} correct colors!"
  end

  def correct_index_pos

    count = 0

    [0, 1, 2, 3].each do |index|
      if @secret_code[index] == @guess[index]
        count += 1
      end
    end
  end



end
