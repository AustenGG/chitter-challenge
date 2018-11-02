require './lib/chitter.rb'
feature 'creating post' do
  scenario 'filling in name and peep' do
    visit '/'
    fill_in('username', with: 'Jhon')
    fill_in('peep', with: 'My first peep')
    click_button('Submit')

    expect(page).to have_content 'Jhon'
    expect(page).to have_content 'My first peep'
  end
  scenario 'User can see the feed' do

  end
  end
end
