module Shoes
class App
	
    attr_accessor :elements,:frame

    def initialize(opts={}, &blk)
    @elements = {}
    @frame = javax.swing.JFrame.new()

    @global_panel = javax.swing.JPanel.new()
		@global_panel.set_layout(nil)
    @current_panel = @global_panel
		opts[:xpos], opts[:ypos], opts[:global] = 0,0, true
    flow(opts, &blk)
    @frame.add(@global_panel)
    @frame.setDefaultCloseOperation(javax.swing.JFrame::EXIT_ON_CLOSE)
    if(opts[:width] && opts[:height])
      @frame.setSize(opts[:width], opts[:height])
		else
			@frame.setSize(700,700)
    end
    @frame.set_visible(true)
  end
  
  def button(opts={}, &blk)
    button = Button.new(@current_panel,opts, &blk)
    @elements[button.identifier] = button
    button
  end
  
  def image(path, opts={})
    image = Image.new(path, @current_panel, opts)
    @elements[image.identifier] = image
    image  
  end
  
  def edit_line(opts={})
    eline = Edit_line.new(@current_panel, opts)
    @elements[eline.identifier] = eline
    eline
  end
  
  def text_box(opts={})
    tbox = Text_box.new(@current_panel, opts)
    @elements[tbox.identifier] = tbox
    tbox
  end
  
  def check(opts={}, &blk)
    cbox = Check.new(@current_panel, opts)
    @elements[cbox.identifier] = cbox
    cbox
  end
  
  def stack(opts={}, &blk)
		opts[:xpos] ||= @current_panel.xpos
		opts[:ypos] ||= @current_panel.ypos
    tstack = Stack.new(@current_panel, opts)
    layout(tstack, &blk)
  end
  
  def flow(opts={}, &blk)
		opts[:xpos] ||= @current_panel.xpos
		opts[:ypos] ||= @current_panel.ypos
    tflow = Flow.new(@current_panel, opts)
    layout(tflow, &blk)
  end
  
  def layout(layer, &blk)
    parent = @current_panel
    @current_panel = layer
    instance_eval &blk
    @current_panel = parent
  end
end
end
