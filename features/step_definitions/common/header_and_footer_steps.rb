Given /I verify the header and footer/ do
  expect(@header.header_cart.displayed?).to eql(true)
  expect(@header.my_account.displayed?).to eql(true)
  expect(@header.search_field.displayed?).to eql(true)
  expect(@footer.blog.displayed?).to eql(true)
  expect(@footer.featured.displayed?).to eql(true)
  expect(@footer.nav.displayed?).to eql(true)
end

When /I search for (.*)/i do |product|
  @header.search_field.send_keys(product)
  @keys.press_enter
  expect(@product_list_category.meta.displayed?).to eql(true) unless @browser.current_url.include? "alert" #redirect occurs in security testing
end