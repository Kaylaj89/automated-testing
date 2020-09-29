# card.rb
SUITS = [:hearts, :spades, :clubs, :diamonds]
VALUE_CARDS = [2, 3, 4, 5, 6, 7, 8, 9, 10]
# FACE_CARD_VALUES = [1, 11, 12, 13]
# FACE_CARDS = ["Ace", "Jack", "Queen", "King"]
class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    raise ArgumentError, "Invalid Suit" unless SUITS.include? suit
    raise ArgumentError, "Invalid Value" if value < 1 || value > 13

    @value = value
    @suit = suit

  end

  def self.true_value(value)
    new_value = nil

    # if VALUE_CARDS.any? == value
    #   return value
    # end
    new_value = value
    new_value = "Ace" if value == 1
    new_value = "Jack" if value == 11
    new_value = "Queen" if value == 12
    new_value = "King" if value == 13
    new_value == value
    return new_value

  end


  def to_s
      return "#{Card.true_value(value)} of #{suit.to_s}"
    end

end
