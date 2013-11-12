# You should edit this file with the browsers you wish to use
# For options, check out http://saucelabs.com/docs/platforms
require "sauce"
require "sauce/capybara"

Sauce.config do |config|
  config[:browsers] = [
    #["Windows 7", "Internet Explorer", "10"],
    ["Windows XP", "Internet Explorer", "7"],
    ["Windows XP", "Chrome", nil],
    #["Windows 7", "Firefox", 25],
    ["Linux", "Firefox", "20"],
    #["OS X 10.8", "Safari", "6"]
  ]
end
