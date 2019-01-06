Given /I am on the checkout page/i do
  @browser.get(@domain + '/products-page/checkout/')
  steps %Q{ * I verify the header and footer}
end

Given /I DELETE all items in the cart/i do
  pending
  # Option1
  # Ping API DELETE Items Endpoint with HTTParty rubygem
  # https://rubygems.org/gems/httparty
  # @request_url = URI.encode(@domain + "/api/v1/items")
  # puts @response = HTTParty.delete(@request_url)

  #Option2
  # Use the net-ssh and sequel rubygems to remove items from the items table
  # https://rubygems.org/gems/net-ssh
  # https://rubygems.org/gems/sequel
  # > DELETE FROM items;
end