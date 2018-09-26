describe 'BookmarkApp Features' do
  feature 'Viewing bookmarks' do
    scenario 'a user visits the index page' do
      visit('/')
      expect(page.status_code).to eq(200)
      expect(page).to have_content 'Bookmark Manager'
    end
  end
  feature 'Viewing bookmarks' do
    scenario 'a user can see previously added bookmarks' do
      visit('/bookmarks')
      bookmarks = Bookmark.all
      expect(page.status_code).to eq(200)
      expect(bookmarks).to have_content 'http://www.makersacademy.com'
      expect(bookmarks).to have_content 'http://www.destroyallsoftware.com'
      expect(bookmarks).to have_content 'http://www.google.com'
    end
  end
  feature 'Adding bookmarks' do
    scenario 'a user adds a new bookmark' do
      visit('/bookmarks')
      expect(page.status_code).to eq(200)
      click_button('Add link')
      expect(page).to have_content 'Add new url here:'
      fill_in('URL', with: 'http://www.amazon.com')
      click_button('Submit')
      expect(page).to have_content 'http://www.amazon.com'
    end
  end
end
