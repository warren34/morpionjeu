class Player
  attr_accessor :name, :symbol
  
  # method asking the name of player, creating the player and assiging a symbol
  def initialize(symbol)
    puts " Bienvenue dans notre jeu  de Morpion !"
    puts " Quel est ton prénom"
    print ">"
    @name = gets.chomp.to_s
    @symbol = symbol
    puts " Super #{@name}, le symbole '#{@symbol}' t'a été attribué !"
  end

end