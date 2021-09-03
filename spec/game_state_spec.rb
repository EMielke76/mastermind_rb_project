require 'rspec'
require './introduction.rb'
require './lib/game_state.rb'

RSpec.describe GameState do

  game1 = GameState.new


  it "can generate a secret_code" do

    secret_code = game1.secret_code

    expect(secret_code.length).to eq(4)
#think of a way to write a test to check the code has only gbyr, without requiring to
#have all four letters
  end


  xit "can ask for a guess" do

    expect(game1.ask_for_guess).to eq()

  end

  xit "can get the user's guess"

    game1.ask_for_guess
    game1.respond_to_guess

    expect(game1.guess).to eq('g', 'g', 'y', 'r')

  end

end
