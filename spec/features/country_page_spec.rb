require "spec_helper"

describe "Country page", sauce: true do
  let(:fap_url) { "http://dev.findaport.com" }

  it "can access using Search Engine Friendly(SEF) url" do
    #country = create(:country, country: "United Banana Rep")
    visit fap_url + "/country/uk"
    expect(page).to have_content('General Information for United Kingdom')
  end
end
