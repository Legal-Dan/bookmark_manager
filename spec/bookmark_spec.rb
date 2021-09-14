require 'bookmark'

describe Bookmark do
  it "is a Bookmark" do
    expect(subject).to be_a Bookmark
  end

  it "returns a list of bookmarks" do
    expect(Bookmark.all).to include ("http://www.makersacademy.com/")
  end

end