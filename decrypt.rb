# encoding: UTF-8
require 'twofish'
require 'base64'
require 'pry'

require_relative 'generate_key'
require_relative 'generate_text'


file = File.open("key", "r")
file_cripto = File.open("hex_criptografia", "r")
key = file.read
cripto = file_cripto.read

tf = Twofish.new(key, :mode => :ecb, :padding => :zero_byte)

descriptografado = tf.decrypt(cripto)
puts "Conteudo descriptografado"
puts descriptografado