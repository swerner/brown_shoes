require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "Elementary Button Example" do
  before(:all) do
    @gui = Shoes.app do
      stack do
        edit_line :id => "edit"
        
        button :text => "Change to Hello", :id => 'button_one' do
          @elements['edit'].to_java.setText("Hello")
        end
        
        button :text => 'Change to Goodbye', :id => 'button_two' do
          @elements['edit'].to_java.setText("Goodbye")
        end
      
      end
    end
  end
  
  it "Should contain elements with id of edit, button_one, and button_two" do
    @gui.elements.should include('edit')
    @gui.elements.should include('button_one')
    @gui.elements.should include('button_two')
  end
  
  it "Should make the edit_box's contents say 'Hello' when button_one is clicked" do
    @gui.elements['button_one'].to_java.doClick()
    @gui.elements['edit'].to_java.getText.should == 'Hello'
  end
  
  it "Should make the edit_box's contents say 'Goodbye' when button_two is clicked" do
    @gui.elements['button_two'].to_java.doClick()
    @gui.elements['edit'].to_java.getText.should == 'Goodbye'
  end
  
  after(:all) do
    @gui.frame.dispose()
  end
end
