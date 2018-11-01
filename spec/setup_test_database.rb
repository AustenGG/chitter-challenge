require 'pg'

class Clear
  def self.clear
    p "Setting up test database..."
    connection = PG.connect(dbname: 'chitter_test')
    # Clear the bookmarks table
    connection.exec("TRUNCATE peeps;")
  end
end
