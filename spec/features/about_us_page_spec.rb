require 'spec_helper'

describe "About Page", sauce: true do
  #before do
    #Capybara.current_driver = :selenium
  #end

  it "have a right title" do
    visit 'http://dev.findaport.com/about'
    expect(page).to have_content('Having launched in February 2010')
  end 
end
