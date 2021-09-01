class GameState

#returns a secret code
  def secret_code

  end

#prompts the user to make a guess
  def ask_for_guess

  end

#get the input from ask_for_guess and call for appropriate method for response
  def respond_to_guess

  end

#quit the game if guess == 'q' or 'quit'
  def quit

  end

#display the secret code if @guess == ‘c’ or ‘cheat’
  def cheat

  end

#display appropriate message and make them try again for invalid input
#if @guess > 4 or @guess < 4 or @guess contains illegitimate char, display appropriate message
  def invalid_input

  end

#if @guess == secret_code, end the game by calling the EndGame class??
  def correct_guess

  end

#tell the user how many correct letters in how many correct locations and
#call ask_for_guess
  def valid_input

  end

end  
