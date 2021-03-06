
# deck.rb

require_relative 'card'

class Deck

  attr_reader :card


  def initialize
    @cards = []
    [:hearts, :spades, :clubs, :diamonds].each do |suit|
      (1..13).each do |value|
        @cards << Card.new(value, suit)
        return @cards
      end
    end
  end

  def draw
    return if Deck.nil?
    drawn_card = @cards.pop
    return drawn_card

  end

  def shuffle
    # shuffles the deck
  end
end
