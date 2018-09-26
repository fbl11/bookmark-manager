require 'pg'

def setup_test_db
  connection = PG.connect(dbname: 'bookmark_manager_test')
  # Clean the bookmarks table in test database
  connection.exec('TRUNCATE TABLE bookmarks')
  # below could be replaced using new 'add' method, but 
  # I feel this might introduce additiona complexity if 
  # tests fail: problem with 'add' or problem somewhere else?
  connection.exec("INSERT INTO bookmarks (url) VALUES (
    'http://www.makersacademy.com');")
  connection.exec("INSERT INTO bookmarks (url) VALUES (
    'http://www.destroyallsoftware.com');")
  connection.exec("INSERT INTO bookmarks (url) VALUES (
    'http://www.google.com');")
end
