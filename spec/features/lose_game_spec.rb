feature 'enables player to lose game' do
  scenario 'player loses game when hp == 0' do
    sign_in_and_play
    click_button "Attack"
    click_button "Attack" #cxhange amounts of attacks
    expect(page).to have_content 'Gary lost'
  end
end