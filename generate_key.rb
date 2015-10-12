require 'securerandom'


class GenerateKey
  
  def create_key
    @rand_key = SecureRandom.base64
    puts "Gerando chave..."
  end

  def save_key
      File.open('key', 'w') { |file| file.write(@rand_key) }
      puts "Salvando chave no arquivo key"
  end
end
