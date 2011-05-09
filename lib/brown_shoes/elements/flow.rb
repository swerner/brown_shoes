module Shoes
	class Flow < Element
		java_import "javax.swing.JPanel"
		java_import "javax.swing.BoxLayout"
		java_import "java.awt.Dimension"

		attr_accessor :panel, :children, :xpos, :ypos, :global

		def initialize(parent, opts={})
			super(parent, opts)
			@children = []
			@panel = parent
			@container = self
			@xpos, @ypos, @global = opts[:xpos], opts[:ypos], opts[:global]

		end

		def add(element, dimensions)
			if @global
				@panel.add(element)
				@xpos += dimensions[:width] + 5 unless dimensions[:ignore]
			else
				dimensions[:ignore] = true
				@panel.add(element, dimensions)
				@panel.xpos += dimensions[:width] + 5
			end
			@children << element
		end

	end
end
