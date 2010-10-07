require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "Images" do
  before(:all) do
    @gui = Shoes.app do
      image File.expand_path(File.dirname(__FILE__) + '/images/shoe.jpg'), :id => 'image'
    end
  end
  
  it "Should have a image with the image id" do
    @gui.elements.should include('image')
  end
  
  after(:all) do
    @gui.frame.dispose()
  end
end
