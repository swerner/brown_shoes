module Shoes
class Flow < Element
  java_import "javax.swing.JPanel"
  java_import "javax.swing.BoxLayout"
  java_import "java.awt.Dimension"
  
  attr_accessor :panel
  
  def initialize(opts={})
    super(opts)
    @panel = JPanel.new()
		@panel.set_layout(nil)
    @panel.set_location(0,0)
    if(opts[:height] && opts[:width])
      @panel.set_preferred_size(java.awt.Dimension.new(opts[:width], opts[:height]))
		else
			@panel.set_preferred_size(java.awt.Dimension.new(500,500))
    end
  end
end
end
