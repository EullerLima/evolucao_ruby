def cadastro_alunos
    alunos = []
    adiciona = {}
    nome = 1
    n = 0
    puts 'Digite 1 para inserir o nome do aluno ou 0 para encerrar: '
    opcao = gets.to_i
    if opcao == 1
      while nome != 0
        puts 'Digite o nome do aluno: '
        nome = gets.chomp
        if nome != '0'
          adiciona[:aluno] = nome
          puts 'Digite a nota do aluno: '
          adiciona[:nota] = gets.to_f
          puts 'Digite a disciplina: '
          adiciona[:disciplina] = gets.chomp
          alunos << adiciona
          n += 1
        else
          nome = nome.to_i
          opcao = nome
        end
      end
      
      puts "\nLista de alunos\n  #{alunos[0][:aluno]} tirou nota #{alunos[0][:nota]} na disciplina de #{alunos[0][:disciplina]}\n  #{alunos[0]}\n  #{alunos[1]}  #{alunos[2]}"
    end
    puts 'Programa encerrado.'
  end
  
  def exercicio
    alunos = [{nome: 'Jose', nota: 8, disciplina: 'Ingles'}, {nome: 'Carlos', nota: 3, disciplina: 'Matematica'}]
    #puts "O aluno #{alunos[0][:nome]} tirou #{alunos[0][:nota]} na disciplina #{alunos[0][:disciplina]}.\nO aluno #{alunos[1][:nome]} tirou #{alunos[1][:nota]} na disciplina #{alunos[1][:disciplina]}.\n"
    alunos.each do |cada|
      case cada[:nota]
      when 0
        puts "#{cada[:nome]}, voce zerou a prova. Reprovado."
      when 1..4
        puts "Se esforce mais, #{cada[:nome]}. Reprovado."
      when 5..7
        puts "Nota razoavel, #{cada[:nome]}. Aprovado."
      when 8..10
        puts "Voce foi muito bem, #{cada[:nome]}. Parabéns! Aprovado."
      end
    end
  
  end