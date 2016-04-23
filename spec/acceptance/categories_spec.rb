require 'rails_helper'
require 'spec_helper'

feature "Categories", %q{
  In order to have an awesome Craigslist page
  As an author
  I want to access already created categories
} do

  background do
    Category.create!(title: "Dogs")
    Category.create!(title: "Monkeys")
  end

  scenario "root page" do
    visit root_path
    page.should have_content("Craigslist Slim Practice")
  end

end
