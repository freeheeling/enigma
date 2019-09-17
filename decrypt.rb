# takes four command line arguments.

# The first is an existing file that contains an encrypted message.
# The second is a file where your program should write the decrypted message.
# The third is the key to be used for decryption.
# The fourth is the date to be used for decryption.
#
# In addition to writing the decrypted message to the file,
# your program should output to the screen the file it wrote to,
# the key used for decryption, and the date used for decryption.

# Created 'decrypted.txt' with the key 82648 and date 240818

handle = File.open(ARGV[0], "r")

incoming_text = handle.read

handle.close

capitalized_text = incoming_text.upcase

writer = File.open(ARGV[1], "w")

writer.write(capitalized_text)

writer.close

# Created 'decrypted.txt' with the key 82648 and date 240818
