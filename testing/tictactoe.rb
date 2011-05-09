$LOAD_PATH.unshift('../lib/brown_shoes/')
$LOAD_PATH.unshift('../lib/')

require 'brown_shoes'

class Tttbot


	def chooseMove(buttons)
		return checkHorizontals(buttons) || checkDiagonals(buttons) || checkVerticals(buttons) || openMove([buttons[4]]) || openMove(buttons) 
	end

	def checkHorizontals(btns)
		return checkGroup(btns[0..2]) || checkGroup(btns[3..5]) || checkGroup(btns[6..8])
	end

	def checkDiagonals(btns)
		return checkGroup(btns.values_at(0,4,8)) || checkGroup(btns.values_at(2,4,6))
	end

	def checkVerticals(btns)
		return checkGroup(btns.values_at(0,3,6)) || checkGroup(btns.values_at(1,4,7)) || checkGroup(btns.values_at(2,5,8))
	end

	def checkGroup(btns)
		if(openMove?(btns))
			if((btns[0].text != '-' && btns[0].text == btns[1].text)||
				 (btns[1].text != '-' && btns[1].text == btns[2].text)||
				 (btns[0].text != '-' && btns[0].text == btns[2].text))
				return openMove(btns)
			end
		end
		return false
	end

	def openMove(btns)
		btns.each do |btn|
			if btn.text == '-'
				return btn
			end
		end
		return false
	end
	def openMove?(btns)
		btns[0].text == '-' || btns[1].text == '-' || btns[2].text == '-'
	end

end

Shoes.app do
	@currentMove = "player"
	@computer = Tttbot.new

	stack do
		@info = para "Tic Tac Toe"
		button :text=>"Start Over" do
			[@tl,@tm,@tr,@ml,@mm,@mr,@bl,@bm,@br].each do |btn|
				btn.text = '-'
				btn.unlock
			end
			@currentMove="player"
			@info.text = "Tic Tac Toe"
		end
	end	

	stack do
		flow do
			@tl = button :text=>"-" do makeMove(@tl) end
			@tm = button :text=>"-" do makeMove(@tm) end
			@tr = button :text=>"-" do makeMove(@tr) end
		end
		flow do
			@ml = button :text=>"-" do makeMove(@ml) end
			@mm = button :text=>"-" do makeMove(@mm) end
			@mr = button :text=>"-" do makeMove(@mr) end
		end
		flow do
			@bl = button :text=>"-" do makeMove(@bl) end
			@bm = button :text=>"-" do makeMove(@bm) end
			@br = button :text=>"-" do makeMove(@br) end
		end
	end

	def makeMove(spot)
		spot.locked?
		if(@currentMove == "player")
			spot.text = 'X' unless spot.text=='X' || spot.text == "O"
			@currentMove = "bot"
			spot.lock
		else
			spot.text = 'O' unless spot.text=="X" || spot.text == "O"
			@currentMove = "player"
			spot.lock
		end

		checkBoard
	end


	def checkBoard
		if((@tl.text != '-' && @tl.text == @tm.text && @tl.text == @tr.text)||
			 (@ml.text != '-' && @ml.text == @mm.text && @ml.text == @mr.text)||
			 (@bl.text != '-' && @bl.text == @bm.text && @bl.text == @br.text)||
			 (@tl.text != '-' && @tl.text == @ml.text && @tl.text == @bl.text)||
			 (@tm.text != '-' && @tm.text == @mm.text && @tm.text == @bm.text)||
			 (@tr.text != '-' && @tr.text == @mr.text && @tr.text == @br.text)||
			 (@tl.text != '-' && @tl.text == @mm.text && @tl.text == @br.text)||
			 (@tr.text != '-' && @tr.text == @mm.text && @tr.text == @bl.text))
			if @currentMove == "player"
				endGame("Computer")
			else
				endGame("Player")
			end
		else
			@gameDrawn = true
			[@tl,@tm,@tr,@ml,@mm,@mr,@bl,@bm,@br].each do |btn|
				if btn.text == '-'
					@gameDrawn = false
				end
			end

			if @gameDrawn
				endGame("No one")
			else
				if(@currentMove == "bot")
					makeMove(@computer.chooseMove([@tl,@tm,@tr,@ml,@mm,@mr,@bl,@bm,@br]))
				end
			end

		end
	end

	def endGame(winner)
		@info.text = "#{winner} wins!"
		[@tl,@tm,@tr,@ml,@mm,@mr,@bl,@bm,@br].each do |btn| btn.lock end
	end

end
