require "./spec/features/web_helpers"
feature "player 1" do
  scenario "attack player 2 and recieve confirmation" do
    sign_in_and_play
    expect(page).to have_content "Gary: 60HP"
  end
end
