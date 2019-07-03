#First, ask the user for their birthdate. It must be in the format MMDDYYYY
puts "Enter your birthdate in MMDDYYYY format"
#Use the gets method to get their birthdate & assign it to a variable
birthdate = gets
#Next, you need to add all the numbers of their birthdate together &
#Assign the result to a new variable. You can use array syntax to access each part of their birthdate
number = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + birthdate[3].to_i +
birthdate[4].to_i + birthdate[5].to_i + birthdate[6].to_i + birthdate[7].to_i
#add those eight numbers together.
#set the result of all those additions to a new variable called number
#convert the number back to a string, then follow step 3 again;
#get each number and convert it to a number. Then add those two numbers together.
number = number.to_s
number = number[0].to_i + number[1].to_i
#if statement! Your current number could be 1-9, or it could be greater than 9.
#if statement needs to check if your number > 9, and if it is, reduce again.
if number > 9
  number = number.to_s
  number = number[0].to_i + number[1].to_i
end
#Now you have your single-digit birth path number!
#Display the number to the user and also the number's meaning. For this, you'll use a case statement. Your case statement should check the birth path number, display the correct message.
puts "Your Birth Date Number is #{number}"

case number
when 1
  puts "One is the leader. The number one indicates the ability to stand alone and is a strong vibration. Ruled by the Sun."
when 2
  puts "Two is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
when 3
  puts "Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three's enjoy life and have a good sense of humor. Ruled by Jupiter."
when 4
  puts "Four is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
when 5
  puts "Five is the freedom lover. The number five is an intellectual vibration. These are 'idea' people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
when 6
  puts "Six is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
when 7
  puts "Seven is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
when 8
  puts "Eight is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
when 9
  puts "Nine is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
else
  puts "You are not of this Earth"
end
