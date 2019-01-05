Given /I am am on the home page/i do
  @browser.get(@domain)
  steps %Q{ * I verify the header and footer}
end

Then(/the Home Button should be selected/) do
  expect(@header.home_button.attribute(:class)).to include("current_page_item")
end