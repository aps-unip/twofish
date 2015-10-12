require 'twofish'
require 'base64'

require_relative 'generate_key'
require_relative 'generate_text'

key = @rand_key
tf = Twofish.new(key, :mode => :ecb, :padding => :zero_byte)
texto_cripto = tf.encrypt('@texto')

base = Base64.encode64(texto_cripto)
