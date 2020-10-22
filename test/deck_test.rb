require_relative 'test_helper'

describe Deck do
  # Write tests for the Deck class.
  # What should you test?
    # 1.  Expected Behavior
    # 2.  Edge cases
  describe "You can create a Deck instance" do
    it "Can be instantiated" do
      deck = Deck.new
      expect(deck).must_be_instance_of Deck
    end
  end

  describe "draw method" do
    it "should draw a card from the deck" do
      deck = Deck.new
      expect(deck).must_respond_to :draw
    end

    it "returns a card" do
      deck = Deck.new
      expect(deck.draw).must_be_instance_of Card
    end

    it "will allow user to draw 52 cards from deck" do
      52.times do
        deck = Deck.new
        expect(deck.draw).must_be_instance_of Card
      end
    end
  end
end





