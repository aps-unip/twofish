require 'twofish'
require 'base64'

require_relative 'generate_key'
require_relative 'generate_text'

file = File.open("key", "r")
key = file.read

tf = Twofish.new(key, :mode => :ecb, :padding => :zero_byte)

file2 = File.open("texto", "r")
texto = file2.read
texto_cripto = tf.encrypt(texto)

base = Base64.encode64(texto_cripto)

puts base