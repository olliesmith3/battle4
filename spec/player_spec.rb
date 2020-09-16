require "player"

describe Player do
  it "returns the player name" do
    player = Player.new("Charlie")
    expect(player.name).to eq("Charlie")
  end
end
