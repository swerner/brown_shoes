module Shoes
  class Check < Element
    attr_accessor :check
    
    def initialize(parent, opts={}, &blk)
      super(opts)
      @check = javax.swing.JCheckBox.new()
      @check.add_action_listener(&blk) unless blk.nil?
      parent.add(@check)
      return @check
    end
    
    def to_java
      @check.to_java
    end
    
  end
end