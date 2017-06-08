#!/usr/bin/ruby -w

def find_capitals

	capitals_cities = {
		"OR" => "Salem",
		"AL" => "Montgomery",
		"NJ" => "Trenton",
		"CO" => "Denver"
	}

	states = {
		"Oregon" => "OR",
		"Alabama" => "AL",
		"New Jersey" => "NJ",
		"Colorado" => "CO"
	}

	if ARGV.length == 1
		if ARGV[0].include? ",,"
			return
		end
		str = ARGV[0].split(',').map { |x| x.strip.split.map(&:capitalize).join(' ')}
		str.each { | s |
			if capitals_cities.has_value? s
				puts "#{s} is the capital of #{states.key(capitals_cities.key(s))} (akr: #{capitals_cities.key(s)})"
			elsif states.has_key? s
				puts "#{capitals_cities[states[s]]} is the capital of #{s} (akr: #{states[s]})"
			elsif s != ''
				puts "#{s} is neither a capital city nor a state"
			end
		}
	else
		return
	end
	
end

find_capitals