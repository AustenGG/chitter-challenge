feature 'Testing Chitter' do
  scenario 'Chitter heading' do
    visit '/'
    expect(page).to have_content('Chitter!')
  end
end
