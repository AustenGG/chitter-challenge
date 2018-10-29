feature 'Testing Chitter' do
  scenario 'Chitter heading' do
    visit '/'
    expect(page).to have_content('Chitter!')
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
