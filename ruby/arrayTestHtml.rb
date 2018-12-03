prompt = '> '
elements = []
w = File.open("arrayTest.html", "w")
a = File.open("arrayTest.html", "a+")
num = 0

while true
	print prompt
	input = gets.chomp()
	break if input == "END"
	elements << input
end

w.puts "<html>", "<table>"
w.close
while num < elements.length
	a.print "<tr><td>array[", "#{num}]: ", elements[num], "</td></tr>", "\n"
	num += 1
end
a.puts "</table>", "</html>"
a.close
