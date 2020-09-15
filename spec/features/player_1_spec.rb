feature "player 1" do
  scenario "be able to view player 2's hit points" do
    visit("/")
    fill_in :"player_1_name", with: "Charlie"
    fill_in :"player_2_name", with: "Gary"
    click_button "Submit"
    expect(page).to have_content "Gary: 60HP"
  end
end
