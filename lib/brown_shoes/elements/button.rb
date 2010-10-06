module Shoes
class Button < Element

  attr_accessor :identifier, :button

  def initialize(parent,opts={}, &blk)
    super(opts)
    opts[:text] ||= "Button"
    @button = javax.swing.JButton.new(opts[:text])
    @button.add_action_listener(&blk)
    parent.add(@button)
    return @button      
  end
  
  def to_java
    @button.to_java
  end

end
end