Given /I am on the checkout page/i do
  @browser.get(@domain + '/products-page/checkout/')
  steps %Q{ * I verify the header and footer}
end