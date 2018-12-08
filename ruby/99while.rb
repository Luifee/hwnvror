option = ARGV[0].to_i
a = (1..option).to_a
num = 1

if option >= 1 && option <= 20
	print 0, "|", a.join(' '), "\n"
	print "-+", "-" * 3 * option, "\n"
	while num <= option
		print num, "|", a.map { |i| i * num }.join(' '), "\n"
		num += 1
	end
	else
		puts "請加註數字(1-20)"
end
