require_relative "game_board"
require_relative "player"
require 'pry'
puts "Welcome to Connect 4!\n"

def validate_user_input(user_input)
  while !["y","n"].include?(user_input)
    puts "Invalid user input, please enter (Y/N):"
    user_input = gets.chomp().downcase
  end
  return user_input
end

def comfirm_user_name(player_number,name_comfirmation = "n")

  while name_comfirmation == "n"
    puts "Please enter the #{player_number} Player name: "
    temp_player_name = gets.chomp()
    puts "You have entered: #{temp_player_name}\n"
    puts "Are you satisfied with your name? Please enter (Y/N):"
    name_comfirmation = validate_user_input(gets.chomp().downcase)
  end
  puts "The name of the #{player_number} player is: #{temp_player_name}"
  return temp_player_name
end



player1 = comfirm_user_name("first")
player2 = comfirm_user_name("second")

# game_end = false
# while game_end == false
#
# end
