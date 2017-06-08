#!/usr/bin/ruby -w

def state(code)
	states = {
		"Oregon" => "OR",
		"Alabama" => "AL",
		"New Jersey" => "NJ",
		"Colorado" => "CO"
	}
		
	states.each {|s, c|
		if code == c
			puts "#{s}"
		end
	}
end

def	code_state()

	capitals_cities = {
		"OR" => "Salem",
		"AL" => "Montgomery",
		"NJ" => "Trenton",
		"CO" => "Denver"
		}

	if (ARGV.length != 1)
		return
	end
	capitals_cities.each { |c, city|
		if (city == ARGV[0])
			code = c
			state code
			return
		end

	}
	puts "Unkown capital city"

end

code_state