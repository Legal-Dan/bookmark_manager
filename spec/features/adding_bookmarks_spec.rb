feature "Adding a bookmark" do
  scenario "User can add a bookmark to the database" do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    visit '/'
    click_button "Add Bookmark"
    fill_in('url', :with => "http://www.makersacademy.com")
    click_button "Submit"
    click_button "View Bookmarks"
    expect(page).to have_content "http://www.makersacademy.com"
  end
end