puts "Do you love me?"
answer = gets.chomp.downcase.to_s

while (answer == "no")
  puts "Please wont you fall in love me now?"
  answer = gets.chomp.downcase.to_s
end

puts "I love you too!"
