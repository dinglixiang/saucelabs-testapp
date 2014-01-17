require "spec_helper"

describe "Contact Us Page", sauce: true do
  let(:fap_url) { "http://dev.findaport.com" }

  #let!(:contact_page) { create(:web_page,name: "contact us", path: 'contact', long_title: "contanct us", content: "contact us ...")}

  #let!(:contact_email_tempalte) { create(:email_template, name: "contact") }
  #let(:findaport_email){ "info@findaport.com" }
  #
  it "has correct content" do
    visit fap_url + '/contact'
    expect(page).to have_content("Contact Us")
  end

  context "sending contact message" do
    it "sends with correct form inputs" do
      visit fap_url + '/contact'
      fill_in 'contact_form_name', :with => "dlx"
      fill_in 'contact_form_company', :with => "zenpow"
      fill_in 'contact_form_telephone', :with => "15378182966"
      fill_in 'contact_form_email', :with => "zhimadlx@gmail.com"
      fill_in 'contact_form_comments', :with => "a ha"
      click_button 'Send'

      expect(page).to have_content("Thank you")
      #open_email(findaport_email)
      #current_email.should have_content('a')
    end

  end
end

