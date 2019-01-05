Given /I verify the header and footer/ do
  expect(@header.header_cart.displayed?).to eql(true)
  expect(@header.my_account.displayed?).to eql(true)
  expect(@header.search_field.displayed?).to eql(true)
end