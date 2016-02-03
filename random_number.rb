
def ask
  puts "I'm thinking of a number from 1 to 100."
return gets.chomp
end

def attempts
  attempts += 1
end

attempts = 0
answer = rand(1..100)
guesses = []
guess = 0

until attempts == 5 || guess == answer
guess = ask.to_i
  if guess == 0
    puts "Only pick a number from 1 to 100!"
  elsif guesses.include? (guess.to_i)
    puts "You guessed that already, dummy. Pay attention!"
  elsif guess < answer
    guesses << guess
    attempts += 1
    puts "Your guess is too low."
  elsif guess > answer
    guesses << guess
    attempts += 1
    puts "Your guess is too high."
  else
    puts "You win!!"
  end
end
