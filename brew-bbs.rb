puts ""
puts "Searching..."

searchCommand = `brew search #{ARGV[0]} `
ARGV.clear

packages = []
packages = searchCommand.split

puts ""

if packages.length == 0 then
	puts "No packages found."
	exit
end

i = 0
until i >= packages.length
	padding = ""
	cmdNum = i + 1
	cmdNum = cmdNum.to_s
	puts cmdNum + ". " + padding + packages[i]
	
	i += 1
end

puts ""
print "Enter the number of the package you want to install: "
input = gets.chomp.to_i

if input == 0 || input > packages.length then
	puts "Invalid input"
else
	input = input - 1 # accounts for array zero-indexing
	installCommand = "brew install " + packages[input]
	system(installCommand)
end