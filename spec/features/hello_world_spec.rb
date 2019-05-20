feature "Test" do
  scenario "test for home page response" do
    visit '/'
    expect(page).to have_content("Bookmark manager")
  end
end
