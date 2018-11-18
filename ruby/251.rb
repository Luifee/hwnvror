option = ARGV[0]

if option == nil
	puts "請加註目標檔案名"
	exit
elsif option == "--saveto" && File.exist?(ARGV[2])
	lines = File.open(ARGV[2].to_s, "r").to_a
	target = File.open(ARGV[1].to_s, "a+")
	target.puts lines.first(10)
	exit
elsif File.exist?(option)
	lines = File.open(option, "r").to_a
	puts lines.first(10)
	exit
end

puts "請確認檔案路徑是否正確"
