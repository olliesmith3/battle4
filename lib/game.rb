class Game

  attr_reader :player_1, :player_2, :current_player

  def initialize(player_1, player_2)
    @player = [player_2, player_1]
    @player_1 = player_1
    @player_2 = player_2
    @current_player = @player.first
  end

  def attack(player)
    player.take_damage
  end

  def switch
    @player.reverse!
    @current_player = @player.first
    
    #@current_player = @player_2 if @current_player == @player_1
  end

end