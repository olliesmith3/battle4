feature 'Enter 2 player names ' do
  scenario "players enter name into form" do
    visit('/')
    fill_in :"player_1_name", with: "Charlie"
    fill_in :"player_2_name", with: "Gary"
    click_button 'Submit'
    expect(page).to have_content 'Charlie vs. Gary'
  end
end
