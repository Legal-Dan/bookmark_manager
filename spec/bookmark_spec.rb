require 'bookmark'

describe Bookmark do
  it "is a Bookmark" do
    expect(subject).to be_a Bookmark
  end

  it "returns a list of bookmarks" do
    expect(Bookmark.all).to eq (["http://www.makersacademy.com",
      "http://www.destroyallsoftware.com",
      "http://www.google.com"])
  end

end