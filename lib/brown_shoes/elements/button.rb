module Shoes
class Button < Element

  attr_accessor :button

  def initialize(parent,opts={}, &blk)
    super(opts)
    opts[:text] ||= "Button"
    @button = javax.swing.JButton.new(opts[:text])
    @button.add_action_listener(&blk) unless blk.nil?
		@button.set_location(0,10)
		@button.set_size(50,35)
		
    parent.add(@button)
		parent.revalidate
		parent.set_visible(true)
    return @button
  end
  
  def to_java
    @button.to_java
  end

end
end
