require '/Users/vijaykurian/Projects/bookmark-manager/lib/bookmark'

describe Bookmark do
  describe "the .all method" do
    it "returns the list of bookmarks==> .all" do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.twitter.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://youtube.com');")

      bookmarks = Bookmark.all
      expect(bookmarks).to include("http://youtube.com")
    # ->why is subject.all not representing the class bookmark
    end
  end
  describe "the .create method" do
    it "creates a new bookmark" do
        connection = PG.connect(dbname: 'bookmark_manager_test')
        Bookmark.create(url: 'http://testbookmark.com')
        expect(Bookmark.all).to include('http://testbookmark.com')
    end
  end

end
