handle = File.open(ARGV[0], "r")

incoming_text = handle.read

handle.close

sample_message = incoming_text.length
saved_message = incoming_text

writer = File.open(ARGV[1], 'w')

writer.write(saved_message)

puts "Created '#{ARGV[1]}' containing #{sample_message} characters"
 
writer.close