require 'bookmark'

describe Bookmark do
  it "is a Bookmark" do
    expect(subject).to be_a Bookmark
  end

  it "returns a list of bookmarks" do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

    bookmarks = Bookmark.all

    expect(bookmarks).to include('http://www.makersacademy.com')
    expect(bookmarks).to include('http://www.destroyallsoftware.com')
    expect(bookmarks).to include('http://www.google.com')
  end

  it "can add a bookmark to the database" do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    Bookmark.add('http://www.test.com')
    bookmarks = Bookmark.all

    expect(bookmarks).to include('http://www.test.com')
  end

end