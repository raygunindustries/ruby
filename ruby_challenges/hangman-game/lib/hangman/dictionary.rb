module Hangman
  module Dictionary
    WORDS =
      File.readlines("linuxwords.txt").each do |line|
        line.strip!
        line.size >= 5
    end

    def self.random
      WORDS.sample
    end
  end
end
