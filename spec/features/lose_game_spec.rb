feature 'enables player to lose game' do
  scenario 'player loses game when hp == 0' do
    sign_in_and_play
    12.times { click_button "Attack" }
    expect(page).to have_content 'Gary lost'
  end
end