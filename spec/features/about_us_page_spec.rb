require 'spec_helper'

describe "About Page", sauce: true do
  let(:fap_url) { "http://dev.findaport.com" }
  #let!(:about_page) { create(:web_page, name: "about",path: "about", long_title: "about page", content: "about...")}

  it "have a right title" do
    visit fap_url + '/about'
    expect(page).to have_content('Having launched in February 2010')
  end 
end
