option = ARGV[0].to_i
a = (1..option).to_a

if option >= 1 && option <= 20
	print 0, "|", a.join(' '), "\n"
	print "-+", "-" * 3 * option, "\n"
	for num in 1..option do
		print num, "|", a.map { |i| i * num }.join(' '), "\n"
	end
	else
		puts "請加註數字(1-20)"
end
