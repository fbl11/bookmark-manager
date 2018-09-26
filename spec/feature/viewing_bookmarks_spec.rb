feature 'Viewing bookmarks' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page.status_code).to eq(200)
    expect(page).to have_content 'Bookmark Manager'
  end
end

feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    visit('/bookmarks')
    bookmarks = Bookmark.all
    expect(page.status_code).to eq(200)
    expect(bookmarks).to have_content 'http://www.makersacademy.com'
    expect(bookmarks).to have_content 'http://www.destroyallsoftware.com'
    expect(bookmarks).to have_content 'http://www.google.com'
  end

  feature 'Adding bookmarks' do
    scenario 'A user adds a bookmark' do
      visit('/bookmarks')
      expect(page.status_code).to eq(200)
      click_button('Add link')
      expect(page).have_content 'Add url here:'
      fill_in('URL', with: 'http://www.amazon.com')
      click_button('Submit')
    end
  end
end
