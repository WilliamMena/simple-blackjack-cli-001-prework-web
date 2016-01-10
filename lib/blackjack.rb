def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card_total = rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
card_total = deal_card + deal_card

#return card_total += deal_card
  display_card_total(card_total)
  card_total
  #thanks to TyJuan and Nathaniel in the solved question section
#end
end

def hit?(card_total)
  # code hit? here
  prompt_user
  input = get_user_input

  if input == 's'
  card_total
  elsif input == 'h'
    card_total += deal_card
    card_total
   end 
   return card_total
      
end

def invalid_command
  # code invalid_command here
puts "Please enter a valid command"
prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  card_total = initial_round
  #display_card_total(card_total)
  until card_total >= 21
    #end_game(card_total)
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  #not sure about the #card_total belonging there or if it belongs at all. All I know
  #is that if i enter a #card_total at that location, one of the black errors disappears
  end_game(card_total)
end
    
