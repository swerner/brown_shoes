$LOAD_PATH.unshift('../lib/brown_shoes/')
$LOAD_PATH.unshift('../lib/')
load '../lib/brown_shoes.rb'

Shoes.app do
	stack do
		para "Hello"
		para "Hello"
		para "hello"
	end
end
