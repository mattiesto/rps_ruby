

puts "Welcome to Rock, Paper, Scissors!"

while true
  puts "Your move: rock, paper, or scissors?"

user_choice = gets.chomp.downcase

if user_choice == "quit"
  break
end

if user_choice != "rock" && user_choice != "paper" && user_choice != "scissors"
  puts "That doesn't seem to be a valid move."
else
  outcomes = ["rock" , "paper" , "scissors"]

  computer_choice = outcomes[rand(3)]

  puts "Computer Choice: " + computer_choice

  if computer_choice == user_choice
    puts "It's a tie!"
  elsif computer_choice == "rock" && user_choice == "paper" || computer_choice == "paper" && user_choice == "scissors" || computer_choice == "scissors" && user_choice == "rock"
    puts "You win!"
  elsif computer_choice == "rock" && user_choice == "scissors" || computer_choice == "paper" && user_choice == "rock" || computer_choice == "scissors" && user_choice == "paper"
    puts "You lose!"
  end
end
end
