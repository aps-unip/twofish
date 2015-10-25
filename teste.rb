# require 'pry'

class Teste
  def initialize
    @texto
    @historia
  end

  def navio
        @texto = %{--    .-""-.
       ) (     )
      (   )   (
         /     )
        (_    _)                     0_,-.__
          (_  )_                     |_.-._/
           (    )                    |_--..\
    
         |''   ``\                   |
         |        \                  |      /b.
         |         \  ,,,---===?A`\  |  ,==y'
       ___,,,,,---==""\        |M] \ | ;|\ |>
               _   _   \   ___,|H,,---==""""bno,
        o  O  (_) (_)   \ /          _     AWAW/
                         /         _(+)_  dMM/
          \@_,,,,,,---=="   \      \\|//  MW/
    --''''"                         ===  d/
                                        //
                                        ,'__________________________
       \    \    \     \               ,/~~~~~~~~~~~~~~~~~~~~~~~~~~~
                             _____    ,'  ~~~   .-""-.~~~~~~  .-""-.
          .-""-.           ///==---   /`-._ ..-'      -.__..-'
                `-.__..-' =====\\\\\\ V/  .---\.
     PGMG                 ~~~~~~~~~~~~, _',--/_.\  .-""-.
                                .-""-.___` --  \|         -.__..-
    
    }
  end

  def historia
    @historia =  "Na noite chuvosa da ultima quarta-feira um navio suspeito de carregar 
substancias toxicas vindo da Coréia do Norte foi apreendido próximo ao porto de Santos. 
Segundo o Capitão Nascimento da GCB (Guarda Costeira Brasileira), o navio foi 
denunciado a cerca de 3 meses e desde então está sendo investigado por autoridades 
Brasileiras e órgãos internacionais, até o momento as investigações revelaram 
que o navio é utilizado para transferir lixo químico da Ásia ao Brasil, após 
chegar ao pais o “produto” é encaminhado ao centro-oeste, onde é enterrado.
Com o navio aprendido e rebocado a uma área segura do porto é necessário a vistoria
da embarcação por uma equipe especializada, para isso eles usaram um software de 
comunicação que criptografe os relatórios e assim possam ser enviados em segurança 
até o Capitão Nascimento e sua equipe. Você pode até pensar que o uso de criptografia 
é exagero, mas não é, afinal, você não tem conhecimento sobre o que os norte coreanos são capazes?"
  end

  def slow
  yield.each_char { |c| print c; $stdout.flush; sleep 0.10}
  end

  # slow do
  #   @historia
  # end
end


teste = Teste.new

 puts teste.navio
 def slow
  yield.each_char { |c| print c; $stdout.flush; sleep 0.10}
  end

  slow do
    teste.historia
  end

# binding(pry)