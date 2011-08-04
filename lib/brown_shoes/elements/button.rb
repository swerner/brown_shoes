module Shoes
  class Button < Element

    attr_accessor :button

    def initialize(parent,opts={}, &blk)
      super(parent, opts)
      opts[:text] ||= "Button"
      @button = javax.swing.JButton.new(opts[:text])
      @button.add_action_listener(&blk) unless blk.nil?
      @button.set_location(parent.xpos,parent.ypos)
      @button.set_size(50,35)

      parent.add(@button, {:width => 50, :height => 30})
      return @button
    end

    def to_java
      @button.to_java
    end

    def text=(text)
      @button.set_text(text)
    end

    def text
      @button.get_text
    end

    def lock
      @button.set_enabled(false)
    end

    def unlock
      @button.set_enabled(true)
    end

    def locked?
      !@button.is_enabled()
    end

  end
end
