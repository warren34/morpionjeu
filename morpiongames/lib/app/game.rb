class Game
  attr_accessor :player1, :player2, :board_game
  
  # method creating 2 players and the board
  def initialize
    @player1 = Player.new("X")
    @player2 = Player.new("O")
    @board_game = Board.new
  end

  # method puting the symbol of the players in the grid
  def placement(player)
    puts "Merci de rentrer ton choix de case #{player.name}"    
    choice = gets.chomp.to_sym
    #we check the choice made by the player is the valide key
    while !(@board_game.hash_board.has_key?(choice)) || @board_game.hash_board[choice] != " "
      puts "Merci de rentrer une position valide et libre"
      choice = gets.chomp.to_sym
    end
    #we put the symbol of the player in the case
    @board_game.hash_board[choice] = player.symbol
  end

  # method checking if a player won, if yes which player
  def victory?
    #victory player1
    if @board_game.hash_board[:a1] == @player1.symbol && @board_game.hash_board[:b1] == @player1.symbol && @board_game.hash_board[:c1] == @player1.symbol ||
      @board_game.hash_board[:a2] == @player1.symbol && @board_game.hash_board[:b2] == @player1.symbol && @board_game.hash_board[:c2] == @player1.symbol ||
      @board_game.hash_board[:a3] == @player1.symbol && @board_game.hash_board[:b3] == @player1.symbol && @board_game.hash_board[:c3] == @player1.symbol ||
      @board_game.hash_board[:a1] == @player1.symbol && @board_game.hash_board[:a2] == @player1.symbol && @board_game.hash_board[:a3] == @player1.symbol ||
      @board_game.hash_board[:b1] == @player1.symbol && @board_game.hash_board[:b2] == @player1.symbol && @board_game.hash_board[:b3] == @player1.symbol ||
      @board_game.hash_board[:c1] == @player1.symbol && @board_game.hash_board[:c2] == @player1.symbol && @board_game.hash_board[:c3] == @player1.symbol ||
      @board_game.hash_board[:a1] == @player1.symbol && @board_game.hash_board[:b2] == @player1.symbol && @board_game.hash_board[:c3] == @player1.symbol ||
      @board_game.hash_board[:c1] == @player1.symbol && @board_game.hash_board[:b2] == @player1.symbol && @board_game.hash_board[:a3] == @player1.symbol 
      return @player1
    #victory player2
    elsif @board_game.hash_board[:a1] == @player2.symbol && @board_game.hash_board[:b1] == @player2.symbol && @board_game.hash_board[:c1] == @player2.symbol ||
      @board_game.hash_board[:a2] == @player2.symbol && @board_game.hash_board[:b2] == @player2.symbol && @board_game.hash_board[:c2] == @player2.symbol ||
      @board_game.hash_board[:a3] == @player2.symbol && @board_game.hash_board[:b3] == @player2.symbol && @board_game.hash_board[:c3] == @player2.symbol ||
      @board_game.hash_board[:a1] == @player2.symbol && @board_game.hash_board[:a2] == @player2.symbol && @board_game.hash_board[:a3] == @player2.symbol ||
      @board_game.hash_board[:b1] == @player2.symbol && @board_game.hash_board[:b2] == @player2.symbol && @board_game.hash_board[:b3] == @player2.symbol ||
      @board_game.hash_board[:c1] == @player2.symbol && @board_game.hash_board[:c2] == @player2.symbol && @board_game.hash_board[:c3] == @player2.symbol ||
      @board_game.hash_board[:a1] == @player2.symbol && @board_game.hash_board[:b2] == @player2.symbol && @board_game.hash_board[:c3] == @player2.symbol ||
      @board_game.hash_board[:c1] == @player2.symbol && @board_game.hash_board[:b2] == @player2.symbol && @board_game.hash_board[:a3] == @player2.symbol 
      return @player2
    else
      return false    
    end
  end

  # method checking if the result is a draw
  def draw?
    !(@board_game.hash_board.value?(" "))
  end

  # method displaying the result of the game
  def show_result
    if victory? == @player1 || victory? == @player2
      puts "Bravo !!! Tu as gagné #{victory?.name}"
    else 
      puts "C'est un match nul !!!"
    end
  end
end
