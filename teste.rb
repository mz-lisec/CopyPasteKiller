require "line_reader"

a = LineIndexer.new
ARGV.each do |file|
	a.add(file)
	print "added #{file}\n";
end

result = a.check(5) do |n, tot, l|
	print "#{100*n/tot}%  #{l}     \r"
	$stdout.flush
end

result.each do |ar|
	print "#{ar.join(", ")}\n"
end
