Given /I am on the home page/i do
  @browser.get(@domain)
  steps %Q{ * I verify the header and footer}
end

Then /the Home Button should (NOT )?be selected/i do |visibility|
  if (visibility.to_s.strip == 'NOT') then
    expect(@header.home_button.attribute(:class)).not_to include("current_page_item")
  else
    expect(@header.home_button.attribute(:class)).to include("current_page_item")
  end
end