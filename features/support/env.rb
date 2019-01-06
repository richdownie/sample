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

if ENV["CONSOLE_ERRORS"]
  AfterStep do
    js_errors = @browser.manage.logs.get(:browser)
    js_errors.each do |error|
      puts "CONSOLE ERRORS => #{error}"
      puts "ping slack channel with SEVERE -> (https://rubygems.org/gems/slack-notifier)" unless error.level != "SEVERE"
    end
  end
end

After do
  if ENV["P"] #Pause the browser session with pry
    binding.pry
  else
    @browser.close
  end
end