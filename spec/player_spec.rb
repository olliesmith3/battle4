require "player"

describe Player do
  let(:game) {Game.new}
  subject(:charlie) { Player.new("Charlie") }
  subject(:gary) { Player.new("Gary") }

  describe "#name" do
    it "returns the player name" do
      player = Player.new("Charlie")
      expect(charlie.name).to eq("Charlie")
    end
  end

  describe "#hp" do
    it "returns the player hit points" do
      expect(charlie.hp).to eq 60
    end
  end
  
  describe "#take_damage" do
    it "reduces hitpoints when attacked" do
      expect { game.attack(gary) }.to change { gary.hp }.by(-10)
    end
  end

 
end
