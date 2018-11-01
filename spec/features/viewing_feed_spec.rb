feature 'creating post' do
  scenario 'filling in name and peep' do
    visit '/'
    fill_in('username', with: 'Jhon')
    fill_in('peep', with: 'My first peep')
    click_button('Submit')

    #carry on
  end
end
