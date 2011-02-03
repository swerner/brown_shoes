require 'java'

require 'rubygems'

BROWN_PATH = "brown_shoes/"
['app',
'elements/element',
'elements/button',
'elements/para',
'elements/stack',
'elements/flow',
'elements/edit_line',
'elements/edit_box',
'elements/check',
'elements/image'].each do |library|
  require BROWN_PATH + library
end


module Shoes

def self.app(opts={}, &blk)
  Shoes::App.new(opts, &blk)
end

end
