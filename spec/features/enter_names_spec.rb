
feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Matthew'
    fill_in :player_2_name, with: 'Richard'
    click_button 'Submit'

    save_and_open_page

    expect(page).to have_content 'Matthew vs. Richard'
  end
end
