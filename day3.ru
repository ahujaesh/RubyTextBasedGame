puts("Hello")
$stdout.flush
puts("In this game, you are flying a spaceship, and you have to make desitions.")
$stdout.flush
puts("Would you like to play? (y/n)")
$stdout.flush


input1 = gets.chomp

if input1 == "y"
  puts("Starting game")
  $stdout.flush
  puts("Enter your age")
  $stdout.flush
  input2 = gets.to_i
  if input2 < 18
     puts("You are not old enough")
  else
     puts("We can begin")
  end

else
  puts("bye")
end
