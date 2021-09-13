feature "" do
  scenario "" do
    visit '/'
    click_button "View Bookmarks"
    expect(page).to have_content ["http://www.makersacademy.com",
    "http://www.destroyallsoftware.com",
    "http://www.google.com"]
  end
end