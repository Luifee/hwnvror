option = ARGV[0].to_i
a = (1..option).to_a
num = 1

if option >= 1 && option <= 9
	print 0, "|", a.join(' ')
	puts
	puts "---------------------------"
	while num <= option
		print num, "|", a.map { |i| i * num }.join(' ')
		puts
		num += 1
	end
	else
		puts "請加註數字(1-9)"
end
