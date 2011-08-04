$LOAD_PATH.unshift('../lib/brown_shoes/')
$LOAD_PATH.unshift('../lib/')

require 'brown_shoes'

Shoes.app do
	button :id => 'button', :text => "Move me right" do
		a = @elements['button'].to_java
		20.times do
			a.set_location(a.getX+10, a.getY)
			sleep(1)
			a.set_location(a.getX-10, a.getY)
		end
	end
end
