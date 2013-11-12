require "spec_helper"

describe "Findaport.com" , :sauce => false do
  it "should have text 'world port information online'" do
    visit "/"
    #fill_in 'search', :with => "Ramen"
    #click_button "searchButton"
    page.should have_content "Welcome aboard"
  end 
end
