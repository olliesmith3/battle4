require 'game'

describe Game do
  let(:charlie) { Player.new("Charlie") }
  let(:gary) { Player.new("Gary") }

  
  describe "#attack" do
    it "attacks a player" do
      expect(gary).to receive(:take_damage)
      subject.attack(gary)
    end
  end
end