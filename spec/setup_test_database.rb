require 'pg'

def setup_test_database
p "Setting up test database...👀"
# Connecting to the test Database
connection = PG.connect(dbname: 'bookmark_manager_test')

# Clear the bookmarks table each time rspec is runs

connection.exec("TRUNCATE bookmarks;")

end
