def jogo
    numero = 1
    while numero != 0
      puts 'Digite 1 para jogar ou 0 para sair: '
      opcao = gets.chomp
      numero = opcao.to_i
      if numero == 1
        puts 'Digite seu nome: '
        nome_jogador = gets.chomp
        puts 'Seu nome eh ' + nome_jogador + " e possui #{nome_jogador.length} caracteres"
        puts 'Será que eh par ou impar?'
        numero = nome_jogador.length
        while numero > 0
          inteiro = numero.to_i
          resto = inteiro % 2
          if resto == 0
            puts 'Numero PAR'
          else
            puts 'Numero IMPAR'
          end
          puts 'Digite um numero acima de 0: '
          numero = gets.to_i
        end
      elsif numero != 0
        puts 'Opcao invalida!'
      end
    end
  end
  
  def jogo_melhor
    numero = 1
    while numero != 0
      puts 'Digite 1 para jogar ou 0 para sair: '
      opcao = gets.chomp
      numero = opcao.to_i
      if numero == 1
        puts 'Digite seu nome: '
        nome_jogador = gets.chomp
        puts 'Seu nome eh ' + nome_jogador + " e possui #{nome_jogador.length} caracteres"
        puts 'Será que eh par ou impar?'
        numero = nome_jogador.length
        while numero > 0
          if numero.odd?
            puts 'Numero IMPAR'
          else
            puts 'Numero PAR'
          end
          # Tambem pode verificar se eh par
          # if numero.even?()
          #  puts 'Numero PAR'
          # else
          #  puts 'Numero IMPAR'
          # end
          puts 'Digite um numero acima de 0: '
          numero = gets.to_i
        end
      elsif numero != 0
        puts 'Opcao invalida!'
      end
    end
  end
  