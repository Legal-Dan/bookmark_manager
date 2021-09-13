feature "" do
  scenario "" do
    visit '/'
    click_button "View Bookmarks"
    expect(page).to have_content "Hello"
  end
end