class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def generate_question
    num1 = rand(1..20)
    num2 = rand(1..20)
    @result = num1 + num2
    return "What does #{num1} plus #{num2}"
  end

  def get_winner
    if @player1.lifes > @player2.lifes
      @winner = @player1.name
      @winner_score = @player1.lifes
    else
      @winner = @player2.name
      @winner_score = @player2.lifes
    end
  end

  def play_game
    answer = ""
    turn = @player1

    while @player1.lifes >= 1 and @player2.lifes >= 1
      if turn == @player1
        puts ("Player1: " + generate_question)
        answer = gets.chomp()
        turn = @player2

        if answer.to_i != @result
        puts "wrong"
          @player1.lifes -= 1
        else 
          puts "correct"
        end

      else
        puts ("Player2: " + generate_question)
        answer = gets.chomp()
        turn = @player1

        if answer.to_i != @result
        puts "wrong"
          @player2.lifes -= 1
        else 
          puts "correct"
        end
      end
      puts "P1: #{@player1.lifes}/3 vs P2: #{@player2.lifes}/3"
      puts "-----NEW TURN-----"
    end

    get_winner
    puts "Player #{@winner} wins with score #{@winner_score}/3"
    puts "----Game Over----"
  end
end
