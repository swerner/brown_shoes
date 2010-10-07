require 'java'

require 'rubygems'
require 'require_all'

require_rel 'brown_shoes/app'
require_rel 'brown_shoes/elements/element'
require_rel 'brown_shoes/elements/button'
require_rel 'brown_shoes/elements/stack'
require_rel 'brown_shoes/elements/flow'
require_rel 'brown_shoes/elements/edit_line'
require_rel 'brown_shoes/elements/edit_box'
require_rel 'brown_shoes/elements/check'

module Shoes

def self.app(opts={}, &blk)
  Shoes::App.new(opts, &blk)
end

end
