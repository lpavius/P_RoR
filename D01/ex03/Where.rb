#!/usr/bin/ruby -w

def capitals(code)

	capitals_cities = {
		"OR" => "Salem",
		"AL" => "Montgomery",
		"NJ" => "Trenton",
		"CO" => "Denver"
	}
		
	capitals_cities.each {|cap, city|
		if code == cap
			puts "#{city}"
		end
	}
end


def code_state()
	states = {
		"Oregon" => "OR",
		"Alabama" => "AL",
		"New Jersey" => "NJ",
		"Colorado" => "CO"
	}
	
	if ARGV.length != 1
		return
	end
	states.each do |k,v|
		if k == ARGV[0]
			code = v
			capitals code
			return
		end
	end
	puts "Unknown state"

end

code_state()