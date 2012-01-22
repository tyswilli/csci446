class Player
  def play_turn(warrior)
	if warrior.feel.captive?
		warrior.rescue! :backward
	else
		if warrior.feel.enemy?
			warrior.attack!
		else
			if  warrior.health < 20 
				if warrior.health >= @health
					warrior.rest!
				else
					if  warrior.health < 10
						warrior.walk! :backward
					else
						warrior.walk! 
					end
				end
			else
				warrior.walk!
			end
		end
	end
			@health = warrior.health
	end
end
