#!/usr/bin/ruby

logfile = "/path/logfile"

File.open(logfile, "r") do |f|

	f.each_line do |line|

		values = line.split(' ')
		next if values[4] != '<='

		data ||= []
		data << line.scan(/\bid=(\S+)/)
		data << line.scan(/\bT=\"(.*?)\"/)
		puts data.flatten.join(": ")

	end

end
