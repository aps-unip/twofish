# encoding: UTF-8
require_relative 'history'
require_relative 'generate_key'
require_relative 'generate_text'
require_relative 'encrypt'

historia = History.new
encripto = Encrypt.new

puts historia.navio

def slow
  yield.each_char { |c| print c; $stdout.flush; sleep 0.10}
end

slow do
  historia.historia
end

puts "\n \n \n \n \n \n \n \n \n \n"


puts "Bem vindo, entre com seu nome de usuário"
nome = gets.chomp

puts "\n"

puts "#{nome} escolha o que deseja fazer:"
puts "\n"
puts "1 - Criptografar a informação"
puts "2 - Sair do programa"
menu = gets.chomp

case menu
  when "1" 
    texto = GenerateText.new(texto)
    texto.gerar_texto
    texto.salvar_texto
    
    chave = GenerateKey.new
    chave.create_key
    chave.mostra_chave
    chave.save_key
    
    encripto.abre_key
    encripto.criptografa
    encripto.gera_criptografia
    encripto.mostra_criptografia
    encripto.salvar_criptografia
    texto.remove_file
  when "2"
    puts "Saindo do programa"
end
