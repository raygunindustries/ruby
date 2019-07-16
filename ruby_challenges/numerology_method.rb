#Then, determine the birth path number inside a method. The method should take the birthdate as an argument.
#The return value of the method should be the birth path number.
def get_birth_path_number(birthdate)
  number = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + birthdate[3].to_i +
  birthdate[4].to_i + birthdate[5].to_i + birthdate[6].to_i + birthdate[7].to_i

  number = number.to_s
  number = number[0].to_i + number[1].to_i

  if number > 9
    number = number.to_s
    number = number[0].to_i + number[1].to_i
  end

  return number

end

#Assign the return value from your first method to a variable. You'll use this variable in step 4.

#Next figure out the correct message. Create another method that determines what message to display.
#The method should take the birth path number as an argument. The return value of the method should be the message.
def get_message(birth_path_number)
  case birth_path_number
  when 1
    messsage = "One is the leader. The number one indicates the ability to stand alone and is a strong vibration. Ruled by the Sun."
  when 2
    messsage = "Two is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
  when 3
    messsage = "Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three's enjoy life and have a good sense of humor. Ruled by Jupiter."
  when 4
    messsage = "Four is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
  when 5
    messsage = "Five is the freedom lover. The number five is an intellectual vibration. These are 'idea' people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
  when 6
    messsage = "Six is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
  when 7
    messsage = "Seven is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
  when 8
    messsage = "Eight is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
  when 9
    messsage = "Nine is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
  else
    messsage = "You are not of this Earth"
  end
end
#Assign the return value from your second method to a variable. You'll use this variable in step 6.
#Finally, use puts to show the birth path number and the message (the return value from your second method) to the user.

#First ask the user for their birthdate. Make sure to set their response to a variable.
puts "Enter your birthdate in MMDDYYYY format"
birthdate = gets
# Get birth path number using the method & assign to variable
birth_path_number = get_birth_path_number(birthdate)
# Get the correct message using the method & assign to variable message
message = get_message(birth_path_number)
# Display the number and message to the user
puts message
