feature "Test" do
  scenario "test for home page response" do
    visit '/'
    expect(page).to have_content("hello world")
  end
end
