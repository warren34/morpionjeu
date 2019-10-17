class Board
  attr_accessor :hash_board 

  # method initializing all the values of the grid to " ", then it will be filled with X or O
  def initialize
    @hash_board = {a1: " ", a2: " ", a3: " ", b1: " ", b2: " ",b3: " ",c1: " ",c2: " ",c3: " "}
  end

  # method displaying the morpion grid
  def show
    puts "     A    B    C"
    puts "    " +"-"* 13
    puts " 1  | #{@hash_board[:a1]} | #{@hash_board[:b1]} | #{@hash_board[:c1]} |"
    puts "    " +"-"* 13
    puts " 2  | #{@hash_board[:a2]} | #{@hash_board[:b2]} | #{@hash_board[:c2]} |"
    puts "    " +"-"* 13
    puts " 3  | #{@hash_board[:a3]} | #{@hash_board[:b3]} | #{@hash_board[:c3]} |"
    puts "    " +"-"* 13
  end
end






