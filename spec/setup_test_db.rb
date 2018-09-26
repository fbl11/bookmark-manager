require 'pg'

def setup_test_db
  connection = PG.connect(dbname: 'bookmark_manager_test')
  # Clean the bookmarks table in test database
  connection.exec('TRUNCATE TABLE bookmarks')
  # add standard websites to bookmark table in test database
  connection.exec("INSERT INTO bookmarks (url) VALUES (
    'http://www.makersacademy.com');")
  connection.exec("INSERT INTO bookmarks (url) VALUES (
    'http://www.destroyallsoftware.com');")
  connection.exec("INSERT INTO bookmarks (url) VALUES (
    'http://www.google.com');")
end
