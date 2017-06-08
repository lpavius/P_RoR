#!/usr/bin/ruby -w

def my_var
	a = 10
	b = "10"
	c = c
	d = 10.0
	puts "mes variables :"
	puts "	a contient : #{a} et de type: #{a.class}"
	puts "	b contient : #{b} et de type: #{b.class}"
	if c.nil? == true
		puts "	c contient : nil et de type: #{c.class}"
	end
	puts "	d contient : #{d} et de type: #{d.class}"
end

my_var