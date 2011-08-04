module Shoes
class Stack < Element
  java_import "javax.swing.JPanel"
  java_import "javax.swing.BoxLayout"
  java_import "java.awt.Dimension"
  
  attr_accessor :panel, :children, :xpos, :ypos 
  def initialize(parent, opts={})
    super(parent, opts)
		@children = []
    @panel = parent
		@container = self
		@xpos,@ypos = opts[:xpos], opts[:ypos]

  end

	def add(element, dimensions)
		dimensions[:ignore] = true
		@panel.add(element, dimensions)
		@children << element
		@ypos += dimensions[:height] + 5
		puts "Panel xpos: #{@panel.xpos}"
		unless @panel.xpos >= (@xpos + dimensions[:width]+5)
			puts "Adding to @parent.xpos: #{@panel.xpos}"
			@panel.xpos += dimensions[:width] + 5
		end
	end
end
end
