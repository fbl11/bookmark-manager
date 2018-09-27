describe 'Features' do
  feature 'Adding bookmarks' do
    scenario 'a user adds a new bookmark' do
      visit('/bookmarks')
      expect(page.status_code).to eq(200)
      click_button('Add link')
      expect(page).to have_content 'Add new url here:'
      fill_in('URL', with: 'http://www.testbookmark.com')
      click_button('Submit')
      expect(page).to have_content 'http://www.testbookmark.com'
    end
  end
end
