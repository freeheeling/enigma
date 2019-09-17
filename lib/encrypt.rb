require './lib/enigma'

msg = File.open(ARGV[0], "r")
input = msg.read
msg.close

enigma = Enigma.new
encrypt = enigma.encrypt(input)

writer = File.open(ARGV[1], "w")
writer.write(encrypt[:encryption])
writer.close

puts "Created '#{ARGV[1]}' with the key #{encrypt[:key]} and date #{encrypt[:date]}"
