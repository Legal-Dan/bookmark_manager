class Bookmark
  def self.all
    connection = PG.connect(dbname: 'bookmark_manager')
  end

end