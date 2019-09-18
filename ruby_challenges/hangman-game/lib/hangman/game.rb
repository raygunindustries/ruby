module Hangman
  Signal.trap("INT") {Graphics.clear_screen; puts "Goodbye cruel world!!"; exit }
  class Game
    attr_reader :chances, :word, :wrong_tries, :guess, :wrong_guess

    def initialize
      @chances = 5
      @wrong_tries = 0
      @guess = ""
      @word = Dictionary.random
      @wrong_guess = []
    end

    def play
      Graphics.clear_screen
      puts 'Guess this word: ' + Graphics.obfuscate_word(word, '')

      while true
        print "[#{chances - wrong_tries} chances left]: "

        char = gets.chomp
        Graphics.clear_screen

        if char.match(/\W/)
          puts "Please enter a letter." + Graphics.obfuscate_word(word, guess)

        elsif char.match(/\d/)
          "Please enter a letter." + Graphics.obfuscate_word(word, guess)

        elsif word.include? char
          if char.empty?
            puts "Please enter a letter." + Graphics.obfuscate_word(word, guess)

          elsif guess.include? char
            puts "You already entered '#{char}'. Yes, it is still correct.. 🙄"
            puts 'Try again: ' + Graphics.obfuscate_word(word, guess)

          else
            guess << char
            placeholder = Graphics.obfuscate_word(word, guess)

            puts 'Whoop Whoop!! ' + placeholder

          unless placeholder.include? Graphics::OBFUSCATION_CHAR
            Graphics.clear_screen
            puts Graphics::ALIVE
            Time.new
            sleep 0.3

            Graphics.clear_screen
            puts Graphics::ALIVE2
            Time.new
            sleep 0.3

            Graphics.clear_screen
            puts Graphics::ALIVE3
            puts "\n\nWELL DONE!! YOU SURVIVED"
            break
          end
        end

      elsif
        if wrong_guess.include? char
          puts "You already entered '#{char}'. Yes, it is still correct.. 🙄"
          puts 'Try a different letter. ' + Graphics.obfuscate_word(word, guess)
        end

      else
        puts "OH NOES! The word doesn't contain '#{char}'"
        puts 'Try again: ' + Graphics.obfuscate_word(word, guess)
        wrong_guess << char
        @wrong_tries = @wrong_tries + 1

        if wrong_tries == chances
          puts Graphics::DEAD
          puts "\nARRRRGGGGGGGGGGG YOU LOST! 😭  😵  ☠️"
          break
        end
      end

    end
    end

  end
end
