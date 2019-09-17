require './lib/enigma'

msg = File.open(ARGV[0], "r")
input = msg.read
msg.close

enigma = Enigma.new
decrypt = enigma.decrypt(input, ARGV[2], ARGV[3])

writer = File.open(ARGV[1], "w")
writer.write(decrypt[:decryption])
writer.close

puts "Created '#{ARGV[1]}' with the key #{ARGV[2]} and date #{ARGV[3]}"
