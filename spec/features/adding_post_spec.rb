feature 'Testing Chitter' do
  scenario 'Chitter heading' do
    visit '/'
    fill_in('peep', with:'hey my first peep!')
    expect(page).to have_content('hey my first peep!')
  end
end
