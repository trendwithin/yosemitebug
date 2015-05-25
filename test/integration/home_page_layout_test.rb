require "test_helper"

class HomePageLayoutTest < ActionDispatch::IntegrationTest
  test 'Home Page Links to Season' do
    visit root_path
    page.must_have_content 'This is a content section'
    page.must_have_link 'Summer'
    page.must_have_link 'Fall'
    page.must_have_link 'Winter'
    page.must_have_link 'Spring'
  end

  test 'Home Page Links to Ameneties' do
    visit root_path
    page.must_have_link 'Lodging'
    page.must_have_link 'Spa'
    page.must_have_link 'Cafe'
    page.must_have_link 'About'
    page.must_have_link 'Book Us'
  end
end
