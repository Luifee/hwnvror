option = ARGV[0].to_i
a = (1..option).to_a

if option >= 1 && option <= 9
	print 0, "|", a.join(' ')
	puts
	puts "---------------------------"
	for num in 1..option do
		print num, "|", a.map { |i| i * num }.join(' ')
		puts
	end
	else
		puts "請加註數字(1-9)"
end
