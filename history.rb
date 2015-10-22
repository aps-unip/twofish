navio = %{--    .-""-.
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


text = "Na noite chuvosa da ultima quarta-feira um navio que carregava substancias toxicas vindo de algum pais asiático ainda desconhecido foi apreendido próximo ao porto de santos por carregar

ob vindo direto da Coreia do Norte onde apresenta indicios de possuir carregamento bélico e com riscos de estar incluso uma arma biológica, onde devastaria toda a população podendo destruir mais de uma cidade  e ao meio ambiente, a policia interceptou perto da Região Norte Brasileira, em conversa com o Capitão Nascimento da GCB (Guarda Costeira Brasileira) o mesmo falou que este embarque veio da Ásia:
- Conseguimos apreender este navio, com todo esse perigoso armamento onde destruiria quase tudo que temos , não sabíamos da periculosidade do local, e entramos sem nenhuma roupa especial,e equipamentos para transporte desses armamentos, porém graças a Deus não nos contaminamos.

Como já dito pelo Capitão, para entrar no navio deverá possuir roupa especial,entre outros equipamentos para controlar o acesso nada melhor que chamar a Unidade de Segurança Tecnológica, essa equipe realiza a segurança de locais juntamente com a policia por meio de criptografias onde só pessoas que possuem o acesso poderá descriptografar a informação necessária para adentrar ao navio, sendo assim evitando pessoal mal intencionadas."



def slow
  yield.each_char { |c| print c; $stdout.flush; sleep 0.20}
end

puts navio

slow do
  text
end