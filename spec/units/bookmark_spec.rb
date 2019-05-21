require '/Users/vijaykurian/Projects/bookmark-manager/lib/bookmark'

describe Bookmark do
  it "returns the list of bookmarks" do
    bookmarks = Bookmark.all
    expect(bookmarks).to include("http://youtube.com")
    # ->why is subject.all not representing the class bookmark
  end
end
