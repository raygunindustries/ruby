class Ferret
		attr_writer :name, :owner_name
		attr_reader :name, :owner_name
end

my_ferret = Ferret.new
my_ferret.name= "Fredo"
my_ferret.owner_name= "Joy"
ferretname = my_ferret.name

puts "#{ferretname} loves their owner: #{my_ferret.owner_name}."

puts my_ferret.inspect
