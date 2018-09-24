feature 'It shows a list of bookmarks' do
  scenario 'pre-text' do
    visit('/')
    expect(page.status_code).to eq(200)
    expect(page).to have_content('These are your bookmarks:')
  end

  scenario 'The user want to see saved bookmarks' do
    visit('/')
    expect(page.status_code).to eq(200)
    expect(page).to have_content('Google: google.co.uk')
  end
end