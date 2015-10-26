# encoding: UTF-8
require 'twofish'
require 'base64'

require_relative 'generate_key'
require_relative 'generate_text'

class Encrypt
  def initialize
    @file
    @key
    @tf
    @file2
    @texto
    @texto_cripto
    @base
    @descriptografado
    @hexa
  end

  def abre_key
    @file = File.open("key", "r")
    @key = @file.read
  end

  def criptografa
    @tf = Twofish.new(@key, :mode => :ecb, :padding => :zero_byte)
  end

  def gera_criptografia
    @file2 = File.open("texto", "r")
    @texto = @file2.read
    @texto_cripto = @tf.encrypt(@texto)
    @base = Base64.encode64(@texto_cripto)
    @hexa = @texto.hex
  end

  def mostra_criptografia
    puts "Mostrando a criptografia"
    puts @base
    puts @hexa
  end

  def salvar_criptografia
    File.open('criptografia', 'w') { |file| file.write(@base) }
    File.open('hex_criptografia', 'w') { |file| file.write(@texto_cripto) }
    puts "\n"
    puts "Texto criptografado salvo no arquivo criptografia"
    puts "\n"
  end
end