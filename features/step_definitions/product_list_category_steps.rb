Given /I am on the product list category page/i do
  @browser.get(@domain + '/products-page/product-category/')
  steps %Q{ * I verify the header and footer }
  expect(@product_list_category.meta.displayed?).to eql(true)
end