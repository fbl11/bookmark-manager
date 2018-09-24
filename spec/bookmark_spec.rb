require 'bookmark'

describe Bookmark do
  # subject(:bookmark) { described_class.new }

  describe '#all' do
    it 'returns a list of bookmarks' do
      expect(subject.all).to eq(['Google: google.co.uk'])
    end
  end

end