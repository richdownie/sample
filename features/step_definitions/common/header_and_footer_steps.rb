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

And /I verify the header cart count is equals "(.)"/i do |count|
  sleep 0.1 while @header.cart_count.text == "0"
  expect(@header.cart_count.text).to eql(count)
end