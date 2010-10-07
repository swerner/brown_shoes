require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "Check element" do
  before(:all) do
    @gui = Shoes.app do
      check :id=>"check_one"
    end
  end
  
  it "Should have a checkbox with the id of check_one" do
    @gui.elements.should include('check_one')
  end
  
  
  after(:all) do
    @gui.frame.dispose()
  end
end
