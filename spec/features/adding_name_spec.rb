feature 'adding user name' do
  scenario 'filling in name' do
    visit '/'
    fill_in('name', with: 'Jhon')
    click_button('Submit')

    expect(page).to have_content('Jhon')
  end
end
