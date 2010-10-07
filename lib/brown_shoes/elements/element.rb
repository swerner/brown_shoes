module Shoes
class Element
  attr_accessor :identifier

  def initialize(opts={})
    @identifier = opts[:id]
  end
  
  
  #TODO: Move an element without changing the layout around it   
  def displace(left, top)
    
  end
  
  
  #TODO: Returns the vertical size of the element in pixels  
  def height
    
  end
  
  
  #Hide the element, so it cannot be seen
  def hide
    self.to_java.setVisible(false)
  end
  
  
  #Returns the pixel position of the left edge of the element
  def left
    self.to_java.getY()
  end
  
  
  #TODO: Moves the element to a specific pixel position within its slot  
  def move(left, top)
    
  end
  
  
  #TODO: Returns the object for the element's container: Stack or Flow  
  def parent
    
  end
  
  
  #TODO: Remove the element from the slot - deletes the element  
  def remove
    
  end
  
  
  #Reveals the element if it is hidden
  def show
    self.to_java.setVisible(true)
  end
  
  
  #TODO: Returns a hash of the full set of styles for this element   
  def style
    
  end
  
  
  #TODO: Changes the styles for this element  
  def style(styles={})
    
  end
  
  
  #Hides an element if shown, or shows an element if hidden
  def toggle
    if(self.to_java.isVisible)
      self.hide
    else
      self.show
    end
  end
  
  
  #Returns the pixel position of the top edge of the element  
  def top
    self.to_java.getX()
  end
  
  
  #TODO: Returns the pixel width for the element  
  def width
    
  end
  
end
end