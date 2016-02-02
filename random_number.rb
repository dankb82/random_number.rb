
def ask
  puts "Please guess a number from 1 to 5"
return gets.chomp
end

def attempts
  attempts += 1
end

attempts = 0
answer = rand(1..5)
guesses = []
guess = 0

until attempts == 5 || guess == answer
guess = ask.to_i
guesses << guess
  if guess < answer
    attempts += 1
    puts "Your guess is too low."
  elsif guess > answer
    attempts += 1
    puts "Your guess is too high."
  else
    puts "You win!!"
  end
end
