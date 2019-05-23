feature 'Adding a new Bookmark' do
  scenario 'allows the user to add a bookmark to BookMarkManager'do
    visit ('/bookmarks/new')
    fill_in('url', with: 'http://testbookmark.com')
    click_button('Submit')
    expect(page).to have_content('http://testbookmark.com')
  end
end
