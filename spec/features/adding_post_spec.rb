feature 'Testing Hello World' do
  scenario 'Hello world' do
    visit '/'
    expect(page).to have_content('Hello World')
  end
end
