option = ARGV[0].to_i
a = 1.upto(option).to_a

if option >= 1 && option <= 9
	print 0, "|", a.join(' ')
	puts
	puts "---------------------------"
	a.each do |b|
		print b, "|", a.map { |i| i * b }.join(' ')
		puts
	end
	else
		puts "請加註數字(1-9)"
end
