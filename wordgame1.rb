class GuessWord
  def initialize(words)
    @words = words
    @word = words.sample
    @remaining_chances = 6
    @output_array = Array.new(@word.length, "_")
  end

  def guess(char)
     if @output_array.include?(char)
      "already youu guess it"

     elsif @word.include?(char)
      for index in 0...@word.length
        @output_array[index] = char if @word[index] == char
      end
      "Correct!!!!!!!!!!"
    else
      @remaining_chances -= 1
      "Wrong guess!!!!!!!!"
    end
  end

  def play
    while @remaining_chances > 0
      puts "Remaining chances: #{@remaining_chances} "
      puts "\nCurrent word: #{@output_array.join(' ')}"
      puts "Guess a character: "
      

      char = gets.chomp
      puts guess(char)
    

      if @output_array.join("") == @word
        puts "You Won The word is: #{@word}"
        break
        

      elsif @remaining_chances <= 0
        puts "Game Over. The word was: #{@word}"
      end
      
    end
  end
end
# test the game

gameon=GuessWord.new(["rubby","adi","yug","prajwal","saloni","sharukh","salman","puneet"])
gameon.play

