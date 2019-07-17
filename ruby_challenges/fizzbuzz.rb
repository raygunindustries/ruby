#Write a program that prints the numbers from 1 to 100
#For multiples of three, print “Fizz” instead of the number
#For multiples of five, print “Buzz” instead of the number
#For numbers which are multiples of both three and five,
#print “FizzBuzz” instead of the number
i = 1
while i < 101
  if i%3 == 0 && i%5 == 0
    print "FizzBuzz"
  elsif i%3 == 0
    print "Fizz"
  elsif i%5 == 0
    print "Buzz"
  else
    print i
  end
  i+=1
end
