Given /I am on the product list category page/i do
  @browser.get(@domain + '/products-page/product-category/')
  steps %Q{ * I verify the header and footer}
end