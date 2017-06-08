#!/usr/bin/ruby -w

def display
	f = File.open("numbers.txt", "r").read.split(/,?\n/).sort_by(&:to_i)
	# f.read.split(',')
	# f.each do | file |
		puts f
	# end
	# f.close
	# sort_by(&:to_i)

end

display