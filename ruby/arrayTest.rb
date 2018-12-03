prompt = '> '
elements = []
while true
	print prompt
	input = gets.chomp()
	break if input == "END"
	elements << input
end
for num in 0...elements.length do
	print "array[#{num}]: ", elements[num], "\n"
end
