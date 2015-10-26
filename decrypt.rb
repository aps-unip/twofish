# encoding: UTF-8
require 'twofish'
require 'base64'

require_relative 'generate_key'
require_relative 'generate_text'


puts "Voce deseja colocar a key e a criptografia manualmente (y) e (n) para usar os arquivos gerados (key) e (hex_criptografia)"
opcao = gets.chomp

if opcao == "y"
  puts "Cole a key gerada externamente"
  key = gets.chomp
  puts "Cole a criptografia gerada externamente"
  text_cripto = gets.chomp
  tf = Twofish.new(key, :mode => :ecb, :padding => :zero_byte)
  cripto = text_cripto.unpack('m0').first
  descriptografado = tf.decrypt(cripto)
  puts "Conteudo descriptografado"
  puts descriptografado.force_encoding('UTF-8')


else
  file = File.open("key", "r")
  file_cripto = File.open("criptografia", "r")
  key = file.read
  cripto = file_cripto.read
  cripto = cripto.strip
  puts cripto
  cript = cripto.unpack('m0').first
  tf = Twofish.new(key, :mode => :ecb, :padding => :zero_byte)
  
  descriptografado = tf.decrypt(cript)
  puts "Conteudo descriptografado"
  puts descriptografado
end