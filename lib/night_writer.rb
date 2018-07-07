handle = File.open(ARGV[0], "r")

incoming_text = handle.read

handle.close

capitalized_text = incoming_text.upcase

writer = File.open(ARGV[1], "w")

writer.write(capitalized_text)

puts "Created '#{ARGV[1]}' containing 256 characters."
writer.close

