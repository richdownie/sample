Given /I am on the "(.*)" product description page/i do |product_type|
  @browser.get(@domain + '/products-page/product-category' + product_type)
  steps %Q{ * I verify the header and footer}
end