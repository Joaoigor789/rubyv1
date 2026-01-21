lista = ["Ler o Livro", "Comer Bolo"]
feitas = [true, false] 
puts "Eu fiz a tarefa"
lista.each_with_index do |tarefa, i|
    status = feitas[i] ? "[aceito]" : "[negado]"
    puts "#{status} #{tarefa}"
end