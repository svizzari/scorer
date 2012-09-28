require 'test_helper'

class MatchTest < ActiveSupport::TestCase
  fixtures :matches

  test "should not save a match without 2 players" do
    match = Match.new(:player1 => 1)
    assert !match.save, "Saved a match without 2 players"
  end

  test "should save a match with 2 players" do
    match = matches(:one)
    assert match.save
  end

end
