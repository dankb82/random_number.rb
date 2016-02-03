def ask
  puts "Please guess a number from 1 to 100"
return gets.chomp
end

def attempts
  attempts += 1
end

attempts = 0
numbers = (1..100).to_a
answer = numbers.sample
guesses = []
guess = 0

until attempts == 5 || guess == answer
guess = ask.to_i
guesses.(-1..-2).to_a do |num|
  if guess < guesses.[-1, -2] && guess < answer
    puts "Are you alright in the head?"
  end
end
  if guess == 0
    puts "Only pick a number from 1 to 100!"
  elsif guesses.include? (guess.to_i)
    puts "You guessed that, dummy. Pay attention!"
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
