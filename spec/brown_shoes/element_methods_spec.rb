require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "Basic Element Methods" do
  
  before(:all) do
    @gui = Shoes.app do
      
        
        button :text => "Change to Hello", :id => 'button_one' 
        
        button :text => 'Change to Goodbye', :id => 'button_two'
     
    end
  end
  
  it "Should return 0 for left for button_one" do
    @gui.elements['button_one'].left.should be 0
  end
  
  it "Should return 0 for top of button_one" do
    @gui.elements['button_one'].top.should be 0
  end
  
  it "Should return 0 for left for button_two" do
    @gui.elements['button_two'].left.should be 0
  end
  
  it "Should return 0 for top for button_two" do
    @gui.elements['button_two'].top.should be 147
  end
  
  it "Should make button_one invisible when hide is called" do
    @gui.elements['button_one'].hide
    @gui.elements['button_one'].to_java.isVisible.should be false
  end
  
  it "Should make button_one visible when show is called" do
    @gui.elements['button_one'].hide
    @gui.elements['button_one'].show
    @gui.elements['button_one'].to_java.isVisible.should be true
  end
  
  it "Should make button_one hidden when toggle is called and it is visible" do
    @gui.elements['button_one'].show
    @gui.elements['button_one'].toggle
    @gui.elements['button_one'].to_java.isVisible.should be false
  end
  
  it "Should make button_one visible after being hidden when toggle is called and it is hidden" do
    @gui.elements['button_one'].hide
    @gui.elements['button_one'].toggle
    @gui.elements['button_one'].to_java.isVisible.should be true
  end
  
  
  after(:all) do
    @gui.frame.dispose()
  end
  
end
