#!/usr/bin/env ruby -w

class Html
	attr_reader :page_name
	def initialize(title)
		@page_name = title
		self.Head
	end

	def Head
		file = File.new("#{@page_name}.html", "w")
		file.puts "<!DOCTYPE html>" # or file << ""
		file.puts "<html>"
		file.puts "<head>"
		file.puts "	<meta charset=\"UTF-8\">"
		file.puts "	<title>#{@page_name}</title>"
		file.puts "</head>"
		file.puts "<body>"
		file.close
	end

	def dump(str)
		file = File.open("#{page_name}.html", "a")
		file.puts "	<p>#{str}</p>"
		file.close
	end

	def finish
		file = File.open("#{page_name}.html", "a")
		file.puts "</body>"
		file.close
	end
end

if $PROGRAM_NAME == __FILE__
	page = Html.new("test2")
	page.dump("Hello World")
	page.finish
end
