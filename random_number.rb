def number
  return rand(1..2)
end

puts "Please guess a number from 1 to 2"
guess = gets.chomp.to_i
puts number
  if guess != number
    puts "please guess another number."
  else
    puts "You win!"
  end
