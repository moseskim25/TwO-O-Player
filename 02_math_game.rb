class MathGame

  attr_accessor :lives

  def initialize
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

end

player1 = MathGame.new
player2 = MathGame.new
player = player2

while player1.lives != 0 && player2.lives != 0
  player == player2 ? player = player1 : player = player2

  num1 = rand(20)
  num2 = rand(20)

  puts "Player #{player == player1 ? 1 : 2}: What does #{num1} plus #{num2} equal?"
  answer = gets.chomp

  if answer.to_i != (num1 + num2)
    player.lose_life
    puts 'WRONG'
  else
    puts 'CORRECT'
  end

  if player1.lives != 0 && player2.lives != 0
    puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
    puts '---- NEW TURN ----'
  else
    puts "Player #{player1.lives == 0 ? 2 : 1} wins with a score of #{player1.lives == 0 ? player2.lives : player1.lives}/3"
    puts '---- GAME OVER ----'
  end
end