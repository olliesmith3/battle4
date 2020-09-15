require './spec/features/web_helpers'
feature 'Enter 2 player names ' do
  scenario "players enter name into form" do
    sign_in_and_play
    expect(page).to have_content 'Charlie vs. Gary'
  end
end
