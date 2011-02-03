require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "Para" do
	before(:all) do
		@gui = Shoes.app do
			para "Hello world", :id => 'test_para'
		end
	end

	it "Should have a para with the id test_para" do
		@gui.elements.should include('test_para')
	end

	after(:all) do
		@gui.frame.dispose()
	end
end
