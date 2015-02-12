class GameSquare
	attr_reader :position
	attr_accessor :xo
	def initialize(position,xo=nil)
		@position = position
		@xo = xo
	end

	def position
		return @position
	end

	def display
		if xo != nil
			xo.to_s
		else
			position.to_s
		end
	end
end

a = GameSquare.new("a")
b = GameSquare.new("b")
c = GameSquare.new("c")
d = GameSquare.new("d")
e = GameSquare.new("e")
f = GameSquare.new("f")
g = GameSquare.new("g")
h = GameSquare.new("h")
i = GameSquare.new("i")


there_is_a_winner = false
player_x = true

until there_is_a_winner == true
	if (a.display==b.display && b.display==c.display) || (c.display==f.display && f.display==i.display) || (g.display==h.display && h.display==i.display) || (a.display==d.display && d.display==g.display) || (a.display==e.display && e.display==i.display) || (c.display==e.display && e.display==g.display) || (d.display==e.display && e.display==f.display)
		puts a.display + " " + b.display + " " + c.display
		puts d.display + " " + e.display + " " + f.display
		puts g.display + " " + h.display + " " + i.display
		puts ""
		puts "WINNER!!!"
		there_is_a_winner = true
	elsif player_x == true
		puts a.display + " " + b.display + " " + c.display
		puts d.display + " " + e.display + " " + f.display
		puts g.display + " " + h.display + " " + i.display
		puts "Player X, GO!"
		input = gets.chomp.downcase
		case input
		when "a"
			a.xo=("X")
		when "b"
			b.xo=("X")
		when "c"
			c.xo=("X")
		when "d"
			d.xo=("X")
		when "e"
			e.xo=("X")
		when "f"
			f.xo=("X")
		when "g"
			g.xo=("X")
		when "i"
			i.xo=("X")
		when "h"
			h.xo=("X")
		else
			puts "That is an invalid response, please try again"
			input=gets.chomp.downcase
		end
		player_x = false
	else
		puts a.display + " " + b.display + " " + c.display
		puts d.display + " " + e.display + " " + f.display
		puts g.display + " " + h.display + " " + i.display
		puts ""
		puts "Player O, GO!"
		input = gets.chomp
		case input
		when "a"
			a.xo=("O")
		when "b"
			b.xo=("O")
		when "c"
			c.xo=("O")
		when "d"
			d.xo=("O")
		when "e"
			e.xo=("O")
		when "f"
			f.xo=("O")
		when "g"
			g.xo=("O")
		when "i"
			i.xo=("O")
		when "h"
			h.xo=("O")
		else
			puts "That is an invalid response, please try again"
			input=gets.chomp.downcase
		end
		player_x = true
	end
end