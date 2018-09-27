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
    scenario 'a user tries to add an invalid url and sees an error message' do
      visit('/create')
      expect(page.status_code).to eq(200)
      fill_in('URL', with: 'something invalid')
      click_button('Submit')
      expect(page).to have_content 'This is not a valid URL'
    end
     scenario 'a user will not see an invalid url they tried to add in their bookmarks' do
      visit('/create')
      expect(page.status_code).to eq(200)
      fill_in('URL', with: 'something invalid')
      click_button('Submit')
      expect(page).not_to have_content 'something invalid'
    end
  end
end
