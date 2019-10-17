class Application
  attr_accessor :decision, :game

  # method checking if a new game should be initialized
  def initialize
    @decision = "YES"
  end

  # method running the game
  def party_ongoing
    @game = Game.new
    while @game.victory? == false && @game.draw? == false
      @game.board_game.show
      @game.placement(game.player1)
      @game.board_game.show
      if @game.victory? == false && @game.draw? == false
        @game.placement(@game.player2)
      end
    end
  end

  # method displaying the winner and if players want to re-play
  def party_ending
    @game.show_result
    puts "Souhaitez-vous maintenant refaire une partie ? Entrez 'YES' or 'NO' please."
    @decision = gets.chomp
    while @decision != "YES" && @decision != "NO"
      puts "Merci de rentrer 'YES' or 'NO' avec ce format"
      @decision = gets.chomp
    end
  end
end
