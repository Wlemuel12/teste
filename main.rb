require_relative 'List'

opcao = 9

while opcao != 0
	puts "\n=-=-=-=-=-=-=To Do List - Lemuel's ruby project=-=-=-=-=-=-="
	puts "     Escolha uma opção:"
	puts "[1] Criar lista - [2] Adicionar tarefa - [0] Sair"
	opcao = gets.chomp.to_i

	case opcao
	when 1
		print "Nome da lista: "
		lst_name = gets.chomp
		list = List.new(lst_name)	

	when 2
		print "Descricao: "
		desc = gets.chomp
		list.add_task(desc)

	when 0
		puts "Flw!!"

	else
		puts "Erro!"
	end
end



