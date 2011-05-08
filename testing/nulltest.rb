$LOAD_PATH.unshift('../lib/brown_shoes/')
$LOAD_PATH.unshift('../lib/')

require 'brown_shoes'

Shoes.app do
	button :id =>'button', :text => "Hello" do
		b = @elements['button'].to_java
		b.set_location(b.getX+10, b.getX)
		puts @elements['button'].to_java.getX
		puts @elements['button'].to_java.getY
	end
end
