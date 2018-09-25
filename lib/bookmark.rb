require 'pg'
# this class connects to a database
class Bookmark
  def self.all
    connection = PG.connect(dbname: 'bookmark_manager')
    table = connection.exec('SELECT * FROM bookmarks')

    # bookmarks = table.map { |row| row.values_at('url') }
    # ^returns array of arrays (which in turn contain strings):
    # [['urlname1'], ['urlname2'], ['urlname3']]
    # but what we need is something like this:
    # ['urlname1', 'urlname2', 'urlname3']:
    table.map { |row| row['url'] }
  end
end
