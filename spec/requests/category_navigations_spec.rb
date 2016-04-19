require 'rails_helper'

RSpec.describe "CategoryNavigations", type: :request do
  # describe "GET /category_navigations" do
  #   it "works! (now write some real specs)" do
  #     get category_navigations_path
  #     expect(response).to have_http_status(200)
  #   end
  # end

  it "navigates to home page and sees list of categories" do
    category = factory(:category)
    visit root_path
    click_link "home"
  end

  # TODO get this test working
  # TODO get guard to work... it should automatically run tests
end
