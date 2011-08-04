$LOAD_PATH.unshift('../lib/brown_shoes/')
$LOAD_PATH.unshift('../lib/')

require 'brown_shoes'

Shoes.app do
	stack do
		button :id =>'button1', :text => "Hello" do
			puts @elements['button1'].to_java.getX
		end
		button :id =>'button2', :text => "Hello" do
			puts @elements['button2'].to_java.getX
		end
	end
	stack do
		button :id =>'button3', :text => "Hello" do
			puts @elements['button3'].to_java.getX
		end
		button :id =>'button4', :text => "Hello" 
		button :id =>'button5', :text => "Hello" 
		button :id =>'button5', :text => "Hello" 
		button :id =>'button5', :text => "Hello" 
	end
	stack do
		button :id =>'button6', :text => "Hello" 
		button :id =>'button6', :text => "Hello" 
		button :id =>'button6', :text => "Hello" 
		button :id =>'button6', :text => "Hello" 
	end
end
