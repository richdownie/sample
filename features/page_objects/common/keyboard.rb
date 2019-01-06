class Keyboard

  def initialize(browser, domain)
    @browser = browser
    @domain = domain
  end

  def press_enter
    @browser.action.send_keys(:enter).perform
  end
end