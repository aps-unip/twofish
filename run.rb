require_relative 'generate_key'
require_relative 'generate_text'

texto = GenerateText.new(texto)
texto.gerar_texto
texto.salvar_texto

chave = GenerateKey.new
chave.create_key
chave.save_key