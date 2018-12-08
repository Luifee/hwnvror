option = ARGV[0].to_i
a = (1..option).to_a

if option >= 1 && option <= 20
	print 0, "|", a.join(' '), "\n"
	print "-+", "-" * 3 * option, "\n"
	a.each do |b|
		print b, "|", a.map { |i| i * b }.join(' '), "\n"
	end
	else
		puts "請加註數字(1-20)"
end
