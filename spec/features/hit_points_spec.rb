# frozen_string_literal: true

feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Richard: 60HP'
  end

  scenario 'see Player 1 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Matthew: 60HP'
  end
end
