require 'selenium-webdriver'
require 'webdrivers'
require 'cucumber'
require 'rspec'
require 'pry'
require 'httparty'
require 'cukehub'
require_relative '../page_objects/checkout_page'
require_relative '../page_objects/home_page'
require_relative '../page_objects/product_description_page'
require_relative '../page_objects/product_list_category_page'
require_relative '../page_objects/header'

Before do
  if ENV["RESULTS"]
    @cukehub_api_key = "GXtA65NoxiajzFCCWtpEaSBf"
  end
  @header = Header.new(@browser, @domain)
  @footer = Footer.new(@browser, @domain)
  @checkout = Checkout.new(@browser, @domain)
  @home = Home.new(@browser, @domain)
  @production_description = ProductDescription.new(@browser, @domain)
  @product_list_category = ProductListCategory.new(@browser, @domain)
end
