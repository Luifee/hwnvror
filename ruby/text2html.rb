prompt = '> '
elements = []
num = 0

while true
	print prompt
	input = gets.chomp()
	break if input == "END"
	elements << input
end

puts "<table>"
while num < elements.length
	print "<tr><td>#{num + 1}</td><td>", elements[num], "</td></tr>", "\n"
	num += 1
end
puts "</table>"
