require './braille_map'

handle = File.open(ARGV[0], "r")
incoming_text = handle.read
handle.close

braille = BrailleMap.new
text = braille.translate(incoming_text)
output = braille.format

writer = File.open(ARGV[1], 'w')
writer.write(output)
writer.close


puts "Created '#{ARGV[1]}' containing #{incoming_text.strip.length} characters"
 

 


