def start
  player_score = 0
  computer_score = 0
  options = ["r", "p", "s"]
  continue = true
  winning_choices = {
    "r" => "s",
    "p" => "r",
    "s" => "p"}

    puts
    puts "Welcome to my Rock-Paper-Scissors game! To play, type 'r' for ROCK, 'p' for PAPER or 's' for SCISSORS. \nAlternatively, type 'x' to see the current score or 'q' to stop playing. :)"
    puts

    while continue
      human_choice = gets.chomp.downcase

      if human_choice == "q"
        continue = false
        puts "End result: \nYOU: #{player_score}\nCOM: #{computer_score}"
        puts "Thanks for playing! Bye!"
      elsif human_choice == "x"
        puts "YOU: #{player_score}"
        puts "COM: #{computer_score}\nPlay again!"
        puts
      elsif human_choice == "r" || human_choice == "p" || human_choice == "s"
      computer_choice = options.sample
        if human_choice == computer_choice
        puts "The computer chose #{computer_choice}. It's a draw. Play again!"
        puts
        elsif computer_choice == winning_choices[human_choice]
          puts "The computer chose #{computer_choice}. You win! Play again!"
          puts
          player_score += 1
        elsif computer_choice != winning_choices[human_choice]
          puts "The computer chose #{computer_choice}. You lose! Play again!"
          puts
          computer_score += 1
        end
      else
          puts "Please type a valid response! \n'r' for ROCK, 'p' for PAPER, 's' for SCISSORS, 'x' for the current score and 'q' to stop playing."
          puts
      end
    end
end