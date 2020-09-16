<<<<<<< HEAD
feature "Enter 2 player names " do
  scenario "players enter name into form" do
    visit("/")
    fill_in :"player_1_name", with: "Charlie"
    fill_in :"player_2_name", with: "Gary"
    click_button "Submit"
    expect(page).to have_content "Charlie vs. Gary"
=======
require './spec/features/web_helpers'
feature 'Enter 2 player names ' do
  scenario "players enter name into form" do
    sign_in_and_play
    expect(page).to have_content 'Charlie vs. Gary'
>>>>>>> 58d5569c94a7f4fd688057df07d7716dd56a93f2
  end
end
