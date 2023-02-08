# Avery Reichler
# 8 February 2023
# CS 5300 
# Homework 1, Section 2, Part 3


class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end


  # Input two arrays of two elements each and return the winner
  def self.winner(player1, player2)
    
    # Copy moves
    mv1 = player1[1].downcase
    mv2 = player2[1].downcase

    # Verify input
    if ( mv1 == 'r' || mv1 == 'p' || mv1 == 's' ) && ( mv2 == 'r' || mv2 == 'p' || mv2 == 's' )

      # If tie, player1 will win
      if mv1 == mv2
        return player1
      end

      # Check player1 for a victory
      if ( mv1 == 'r' && mv2 == 's' ) || ( mv1 == 's' && mv2 == 'p' ) || ( mv1 == 'p' && mv2 == 'r' ) 
        return player1
      end

      # Check player2 for a victory
      if ( mv2 == 'r' && mv1 == 's' ) || ( mv2 == 's' && mv1 == 'p' ) || ( mv2 == 'p' && mv1 == 'r' ) 
        return player2
      end

    else

      # Input is not valid
      raise NoSuchStrategyError.new "Strategy must be one of R,P,S"
      return nil

    end
  end


  # Input a multi-dimensional array of 2^n players and return the tournament winner
  def self.tournament_winner(tournament)
    
    # Base case: if only two players remain, return the winner
    if tournament[0][0].is_a? String
      return winner tournament[0], tournament[1]

    # Recursive case: reform the tournament array as we go, recursing over both the first and second elements in the array
    else
      first = tournament_winner tournament[0]
      second = tournament_winner tournament[1]
      return tournament_winner [first, second]

    end
  end
end
