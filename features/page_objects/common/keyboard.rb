class Keyboard

  def initialize

  end

  def press_enter
    @browser.action.send_keys(:enter).perform
  end
end