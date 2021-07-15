
feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Matthew attacked Richard'
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'Richard: 60HP'
    expect(page).to have_content 'Richard: 50HP'
  end
end
