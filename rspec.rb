#prerequisites - ruby , rspec and firefox should be installed
#Both rspec.rb and testing.rb should be placed in same folder 
#on a command prompt go to folder where both files are placed and run below command to run project
#command -    rspec -f documentation rspec.rb
#to fail  test and see results , just change expect assertion below to something else like this -     .to eq("somethingelse")
#change  directory  in testing.rb file to save screenshots.

require './testing'


RSpec.describe Automation do
  describe "#TheTest" do
    it "If this line of text is green then test passed. If its red test failed" do
      test = Automation.new
      #test.testAutomate()
      expect(test.testAutomate("div.api-button","button.btn.btn-default.btn-display.select-logo.select-a-device","div.list-element","button.btn.btn-default.btn-display.select-logo.select","span.el-icon.linux","button.btn.btn-default.btn-display.select-logo.select-a-browser","a.firefox","[class*='28-0']",".col-md-7.ng-binding","label")).to eq("complete")
    end
  end
end





