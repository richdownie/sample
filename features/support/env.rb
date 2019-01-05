require 'selenium-webdriver'
caps = Selenium::WebDriver::Remote::Capabilities.chrome(chromeOptions: {args: ["--headless"]})

Before do
  if ENV["BROWSER"]
    @browser = Selenium::WebDriver.for ENV["BROWSER"].to_sym
    puts @browser.inspect
  else
    @browser = Selenium::WebDriver.for :chrome, desired_capabilities: caps
  end
  @domain = ENV["DOMAIN"] || 'http://store.demoqa.com'
end

After do
  if ENV["P"] #Pause the browser session with pry
    binding.pry
  else
    @browser.close
  end
end