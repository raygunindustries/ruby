#Accept a question
puts "What is your Y/N question?"
question = gets.chomp

#Create Magic-8-Ball List of Possible Answers
possible_answers = [
    "It is certain",
    "It is decidedly so",
    "Without a doubt",
    "Yes definitely",
    "You may rely on it",
    "As I see it, yes",
    "Most likely",
    "Outlook good",
    "Yes",
    "Signs point to yes",
    "Reply hazy try again",
    "Ask again later",
    "Better not tell you now",
    "Cannot predict now",
    "Concentrate and ask again",
    "Don't count on it",
    "My reply is no",
    "My sources say no",
    "Outlook not so good",
    "Very doubtful"
]

#Select a random answer from a list of possible answers
magic_answer = possible_answers[rand(0..19)]

############################
#Setup of twilio-ruby REST API

#Require rubygems and twilio-ruby gems so we have access to the code
require 'rubygems'
require 'twilio-ruby'

#set account sid & token values
account_sid = "ACcc96c4bed8b54bde209b345768ed0c0c"
auth_token = "d4f3175392184e0de7dfe77f730fae7d"

#instantiate client object
@client = Twilio::REST::Client.new(account_sid, auth_token)

############################

#Text the answer!
message = @client.api.account.messages.create(
    :from => "+1xxxxxxxxxx",
    :to => "+1xxxxxxxxxx",
    :body => "You asked #{question}, and the magic 8 ball says #{magic_answer}"
)

puts "The following message was sent #{message.to}."
puts message.body
