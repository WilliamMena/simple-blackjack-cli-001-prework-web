require_relative "blackjack.rb"
def runner
  welcome
  initial_round
  display_card_total(card_total)
  #not sure about the #card_total belonging there or if it belongs at all. All I know
  #is that if i enter a #card_total at that location, one of the black errors disappears
  hit?(card_total)
  display_card_total(card_total)
  until card_total >= 21
    end_game
  end
end
runner