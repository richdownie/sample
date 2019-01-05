class ProductListCategory

  def initialize(browser, domain)
    @browser = browser
    @domain = domain
  end

  def logo
    @browser.first(id: 'logo')
  end

end
