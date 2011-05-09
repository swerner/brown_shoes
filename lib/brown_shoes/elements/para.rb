module Shoes
	class Para < Element
		attr_accessor :para

		def initialize(text, parent, opts={})
			super(opts)
			@para = javax.swing.JLabel.new(text)
			parent.add(@para)
			return @para
		end

		def to_java
			@para.to_java
		end

		def text=(text)
			@para.set_text(text)
		end
	end

end
