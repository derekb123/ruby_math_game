module Question
  def question?(player)
    num1 = rand(1...20)
    num2 = rand(1...20)
    sum = num1 + num2

    puts "#{player.name} what is #{num1} + #{num2}?"
    
    answer = gets.chomp

    if answer == sum
      puts "Great! You're not an idiot!"
      return true;
    else
      puts "Sorry, you're an idiot."
      player.lives -= 1
      return false
    end
  end
end