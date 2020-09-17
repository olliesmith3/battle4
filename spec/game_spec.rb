require 'game'

describe Game do
  subject(:new_game) { Game.new(charlie, gary)}
  let(:charlie) { Player.new("Charlie") }
  let(:gary) { Player.new("Gary") }
  
  
  describe "#attack" do
    it "attacks a player" do
      expect(gary).to receive(:take_damage)
      subject.attack(gary)
    end
  end
  describe "#initialize" do
    it "Receives 2 Player instances" do
      game = Game.new(charlie, gary)
      expect(game.player_1).to eq charlie
    end
  end
end