# command line interface for encryption and decryption

# takes two command line arguments
# The first is an existing file that contains a message to encrypt.
# The second is a file where your program should write the encrypted message.

# In addition to writing the encrypted message to the file,
# program should output to the screen the file it wrote to,
# the key and the date.

handle = File.open(ARGV[0], "r")

incoming_text = handle.read

handle.close

capitalized_text = incoming_text.upcase

writer = File.open(ARGV[1], "w")

writer.write(capitalized_text)

writer.close

# Created 'encrypted.txt' with the key 82648 and date 240818
