$LOAD_PATH.unshift('../lib/brown_shoes/')
$LOAD_PATH.unshift('../lib/')

require 'brown_shoes'

Shoes.app :width => 960, :height => 500 do
		stack  :width => 288, :height => 500 do
			button :id => 'forminfo', :text => "Form Info"
			para "Add"
			button :id => 'textfield', :text => "Text Field"
			button :id => 'textbox', :text => "Text Box"
			button :id => 'multiplechoice', :text => "Multiple Choice"
			button :id => 'checkboxes', :text => "Check Boxes"
			button :id => 'dropdown', :text => "Drop Down"
			button :id => 'sectionbreak', :text => "Section Break"
		end
		stack :width => 384, :height => 500 do
			para "Current Form"
			para "Current Form"
			para "Current Form"
			para "Current Form"
			para "Current Form"
			para "Current Form"
			para "Current Form"
			para "Current Form"
			para "Current Form"
		end
		stack :width => 288, :height => 500 do
			para "Options"
			para "Options"
			para "Options"
			para "Options"
			para "Options"
			para "Options"
			para "Options"
			para "Options"
			para "Options"

		end
end
