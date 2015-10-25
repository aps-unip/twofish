# encoding: UTF-8
require 'fileutils'

class GenerateText
  attr_accessor :texto
  def initialize(texto)
    @texto = texto
  end
  
  def gerar_texto
    puts "Informe o texto que você deseja criptografar"
    @texto = gets
    puts "\n"
  end

  def salvar_texto
    File.open('texto', 'w') { |file| file.write(@texto) }
    puts "Texto salvo no arquivo texto"
    puts "\n"
  end

  def remove_file
    File.delete("texto")
  end
  
end