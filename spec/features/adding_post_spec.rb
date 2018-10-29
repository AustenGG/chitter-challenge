feature 'Testing Chitter' do
  scenario 'Chitter heading' do
    visit '/'
    fill_in('peep', with:'hey my first peep!')
    expect(page).to have_content('hey my first peep!')
  end
end

feature 'Testing Username field' do
  scenario 'Username field' do
    visit '/'
    expect(page).to have_content('Username:')
  end
end

feature 'Testing Message field' do
  scenario 'Message field' do
    visit '/'
    expect(page).to have_content('Enter message:')
  end
end
