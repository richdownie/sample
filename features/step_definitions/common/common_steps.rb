Given /I should (NOT )?see "(.*)"/i do |visibility, text|
  sleep 1
  text = text.to_s.strip
  if (visibility.to_s.strip == 'NOT') then
    expect(@browser.find_element(tag_name: 'body').text).not_to include(text)
  else
    expect(@browser.find_element(tag_name: 'body').text).to include(text)
  end
end

Given /I should (NOT )?be on the "(.*)" page/ do |visibility, value|
  url = @browser.current_url.to_s
  if (visibility.to_s.strip == 'NOT') then
    expect(url).not_to include(value)
  else
    Selenium::WebDriver::Wait.new(timeout: 15).until {expect(@browser.current_url.to_s).to include(value)}
  end
end