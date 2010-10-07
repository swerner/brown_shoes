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

  it "Should initially be unchecked" do
    @gui.elements['check_one'].checked?.should == false
  end  
  
  it "Should become checked when checked=true is called" do
    @gui.elements['check_one'].checked=true
    @gui.elements['check_one'].checked?.should == true
  end

  it "Should become unchecked when checked=false is called" do
    @gui.elements['check_one'].checked=true
    @gui.elements['check_one'].checked=false
    @gui.elements['check_one'].checked?.should == false
  end
  
  after(:all) do
    @gui.frame.dispose()
  end
end
