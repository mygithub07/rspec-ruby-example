
require 'selenium-webdriver'
gem 'test-unit'
require 'test/unit'

class Automation

def testAutomate(arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10)
    @driver = Selenium::WebDriver.for :firefox
    #********************for chrome********************************
    #profile = Selenium::WebDriver::Chrome::Profile.new
    #profile['download.prompt_for_download'] = false
    #profile['download.default_directory'] = "/Users/abc/Applications"
    #@driver = Selenium::WebDriver.for :chrome, :profile => profile
    #***************************************************************
    @base_url = " https://docs.saucelabs.com/reference/platforms-configurator/?_ga=1.5883444.608313.1428365147#/"
    @driver.get(@base_url)
    #@driver.find_element(:css, "div.api-button").click
    @driver.find_element(:css, arg1).click
    @driver.find_element(:css, arg2).click
    sleep 2
    @driver.find_element(:css, arg3).click
    sleep 2
    @driver.find_element(:css,arg4).click
    sleep 2
    @driver.find_element(:css, arg5).click
    sleep 6
    @driver.find_element(:css, arg6).click
    @driver.find_element(:css, arg7).click
    sleep 3
    element=@driver.find_element(:css,arg8)
    @driver.execute_script("arguments[0].click()" , element)
    @driver.find_element(:css, arg9).click
    @driver.find_element(:css, arg10).click
    sleep 2
    @driver.execute_script %Q{window.resizeTo(#{30}, #{50});}
    @driver.save_screenshot('/Users/abc/Documents/screenshot.png')  #provide a valid directory here to save screenshots
    @driver.quit
    return "complete" 
    end
end

