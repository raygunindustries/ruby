class Pet

  def set_name=(pet_name)
    @name = pet_name
  end

  def get_name
    return @name
  end

  def set_pet_species=(species_name)
    @species_name = species_name
  end

  def get_species_name
    return @species_name
  end

end

class Pet_1 < Pet
  def speaks
    return "Come on baby, do the chicken-chicken walk"
  end
end

class Pet_2 < Pet
  def speaks
    return "Push in and a-push out, push in and a-push out"
  end
end

class Pet_3 < Pet
  def speaks
    return "Push in and a-push-push-push-push out"
  end
end

class Pet_4 < Pet
  def speaks
    return "Yeah, let's walk-walk-walk-walk-walk baby"
  end
end

class Pet_5 < Pet
  def speaks
    return "Do the chicken-chicken walk!"
  end
end

my_pet_1 = Pet_1.new
my_pet_1.set_name= "Nugget"
pet_name_1 = my_pet_1.get_name

my_pet_species_1 = Pet_1.new
my_pet_species_1.set_name= "chicken"
pet_species_1 = my_pet_species_1.get_name

my_pet_2 = Pet_2.new
my_pet_2.set_name= "Hooper"
pet_name_2 = my_pet_2.get_name

my_pet_species_2 = Pet_2.new
my_pet_species_2.set_name= "cat"
pet_species_2 = my_pet_species_2.get_name

my_pet_3 = Pet_3.new
my_pet_3.set_name= "Nacho"
pet_name_3 = my_pet_3.get_name

my_pet_species_3 = Pet_3.new
my_pet_species_3.set_name= "cat"
pet_species_3 = my_pet_species_3.get_name

my_pet_4 = Pet_4.new
my_pet_4.set_name= "Pi"
pet_name_4 = my_pet_4.get_name

my_pet_species_4 = Pet_4.new
my_pet_species_4.set_name= "cutie pie dog"
pet_species_4 = my_pet_species_4.get_name

my_pet_5 = Pet_5.new
my_pet_5.set_name= "Buffster"
pet_name_5 = my_pet_5.get_name

my_pet_species_5 = Pet_5.new
my_pet_species_5.set_name= "chicken"
pet_species_5 = my_pet_species_5.get_name

puts "#{pet_name_1}, the #{pet_species_1}, says '#{my_pet_1.speaks}'
#{pet_name_2}, the #{pet_species_2}, says '#{my_pet_2.speaks}'
#{pet_name_3}, the #{pet_species_3}, says '#{my_pet_3.speaks}'
#{pet_name_4}, the #{pet_species_4}, says '#{my_pet_4.speaks}'
#{pet_name_5}, the #{pet_species_5}, says '#{my_pet_5.speaks}'"

puts my_pet_1.inspect
puts my_pet_2.inspect
puts my_pet_3.inspect
puts my_pet_4.inspect
puts my_pet_5.inspect
