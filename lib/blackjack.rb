def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11) 
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  #display_card_total
  sum_cards = deal_card + deal_card
  display_card_total(sum_cards)
  return sum_cards
end

def hit?(card_total)
  # code hit? here
  prompt_user
  user_input = get_user_input

  if user_input == "s"
  elsif user_input == "h"
    card_total += deal_card
  else
    invalid_command
    prompt_user
  end
  card_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round

  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
