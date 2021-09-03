A place for us to store notes, either about the game or to one another

<<<<<<< HEAD

=======
correct_elements_calc, puts needs to come out and return a number
correct_index_pos needs to return a number


Eric's Hash code
require './lib/run_this.rb'
class Text


  def game_start(message)
    {
    'intro' => "This is the introductory paragraph. It's fucking long, longer"\
                "than it needs to be, but it's here to that the user doesnt fuck"\
                "something up.",

    'PlayerGuess' => "This is the player guess text. It too is long, informative"\
                      "but inevitably necessary.",

    'CorrectGuess' => "This is the correct guess text"
    }[message]
  end
end

_________
second file
require './spec/test_this'

def new_name
  puts game_start('intro')
end
puts new_name
>>>>>>> e992dfcd28a98be340c6700c7bd529fe89fcb579
