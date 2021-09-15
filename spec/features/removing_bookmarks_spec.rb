feature "Removing a bookmark" do
  scenario "User can remove a bookmark from the database" do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    visit '/'
    click_button "Remove Bookmark"
    fill_in('url', :with => "http://www.makersacademy.com")
    click_button "Submit"
    click_button "View Bookmarks"
    expect(page).to_not have_content "http://www.makersacademy.com"
  end
end