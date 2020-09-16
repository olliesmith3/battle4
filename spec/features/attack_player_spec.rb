require "./spec/features/web_helpers"
feature "player 1" do
  scenario "be able to view player 2's hit points" do
    sign_in_and_play
    click_link "Attack"
    expect(page).to have_content "Charlie attacked Gary"
  end
end
