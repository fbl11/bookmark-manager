require 'bookmark'

describe Bookmark do
  subject(:bookmark) { described_class.new }

  describe '.all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
      expect(bookmarks).to include('http://www.google.com')
    end
  end
  describe '.add' do
    it 'adds a new bookmark' do
      Bookmark.add('http://www.amazon.com')
      bookmarks = Bookmark.all
      expect(bookmarks).to include('http://www.amazon.com')
    end
  end
end
