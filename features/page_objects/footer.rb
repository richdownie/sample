class Footer

  def initialize(browser, domain)
    @browser = browser
    @domain = domain
  end

  def footer
    @browser.first(id: 'footer')
  end

  def blog
    footer.first(class: 'footer_blog')
  end

  def featured
    footer.first(class: 'footer_featured')
  end

  def nav
    footer.first(id: 'footer_nav')
  end

end