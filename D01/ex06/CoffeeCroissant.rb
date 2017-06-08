#!/usr/bin/ruby -w

def sortByAge
	data = [
		['Frank', 33],
		['Stacy', 15],
		['Juan' , 24],
		['Dom' , 32],
		['Steve', 24],
		['Jill' , 24]
		]

	sorted = data.sort_by {|n, a| [a, n]}
	# sorted = Hash[data.sort_by {|el| el.reverse}]
	# sorted = data.sort_by(&:reverse)

	sorted.each do |pers, age|
		puts pers
	end

end

sortByAge