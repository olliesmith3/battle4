class Game

  attr_reader :player_1, :player_2, :current_player, :not_current_player

  def initialize(player_1, player_2)
    @player = [player_2, player_1]
    @player_1 = player_1
    @player_2 = player_2
    @current_player = @player.first
    @not_current_player = @player.last
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end



  def attack(player)
    player.take_damage
    switch
  end

  def switch
    @player.reverse!
    @current_player = @player.first
    @not_current_player = @player.last
  end



end