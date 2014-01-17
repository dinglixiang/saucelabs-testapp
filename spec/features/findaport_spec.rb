require "spec_helper"

describe "dev.findaport.com", js: true do
  let(:username) { "xin+sauce@zenpow.com" }
  let(:password) { "tthis8" }

  let(:website) { "http://dev.findaport.com" }

  before(:each) {
    visit_homepage
    login
  }
  
  it "search for 'lon' should have 'London' as a result" do
    visit website + "/search"

    within("#search_form") do
      fill_in "port", with: "lon"
      click_link "Search"
    end

    within("#searchportresults") do
      page.should have_content "London"
    end
  end 

  private
    def login
      click_link "Log In"

      within(".login_form") do
        fill_in "email", :with => username
        fill_in "password", :with => password
        click_button "Log In"
      end

      page.should have_content "Log Out"
    end

    def visit_homepage
      visit "http://dev.findaport.com"

      if close_link = find("#MB_close")
        close_link.click
      end
    end
end
