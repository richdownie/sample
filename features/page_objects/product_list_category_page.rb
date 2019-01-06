class ProductListCategory

  def initialize(browser, domain)
    @browser = browser
    @domain = domain
  end

  def meta
    @browser.first(id: 'meta')
  end

  def register
    meta.first(link: 'Register')
  end

  def login_in
    meta.first(link: 'Log in')
  end

end
