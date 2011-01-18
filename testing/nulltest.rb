$LOAD_PATH.unshift('../lib/brown_shoes/')
$LOAD_PATH.unshift('../lib/')

require 'brown_shoes'

Shoes.app do
	button :id =>'button', :text => "Hello" do
		puts @elements['button'].to_java.get_x
		puts @elements['button'].to_java.get_y
	end
end
