require 'spec_helper'

describe "About Page", sauce: true do
  #before do
    #Capybara.current_driver = :selenium
  #end

  it "have a right title" do
    visit 'http://dev.findaport.com/about'
    p @selenium.inspect.to_s
    expect(page).to have_content('Having launched in February 2010')
    p @selenium.session_id.to_s
  end 
end
