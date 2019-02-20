# blackjack_score.rb

VALID_CARDS = [1, 2, 3, 4, 5, 6, 7, 8, 9, "King", "Queen", "Jack"]


def blackjack_score(hand)
    score = 0
    aces = 0
  #nominal case 
  # add up valid cards. Should be able to add a number card 
  # new array with current hand that adds it up. If the sum is greater than 21, an argument error should raise  
  
    
    hand.each do |card|
        unless VALID_CARDS.include? card 
            raise ArgumentError, "#{card} is an invalid card"
    end 
end



# nominal cases
# cards [7, 4, 3] gives score of 14
# Cards are [Ace, Ace, Ace] gives 13

# Edge Cases
# Hands with Aces:
# Ace counts an 11 if the score would be <= 21
# Ace counts as a 1 if the score would be > 21 if the ace counted as an 11
# Check hand for invalid cards
# Greater than 21 is a bust, generates an ArgumentError
# 6 cards generates an ArgumentError
# checking a hand size b/w 2-5
# 0 or 1 cards generates an ArgumentError