class Header

  def initialize(browser, domain)
    @browser = browser
    @domain = domain
  end

  def header
    @browser.first(id: 'header')
  end

  def logo
    header.first(id: 'logo')
  end

  def home_button
    header.all(class: 'menu-item').first
  end

  def header_cart
    header.first(id: 'header_cart')
  end

  def my_account
    header.first(id: 'account')
  end

  def search_field
    header.first(class: 'search')
  end

  def cart_count
    @browser.first(class: 'count')
  end

end
