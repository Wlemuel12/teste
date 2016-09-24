require_relative 'List'

error_message = lambda{ puts "Não há lista criada. Crie uma lista primeiro!" }

module Menu
	def menu
		"=-=-=-=-=-=-=To Do List - Lemuel's ruby project=-=-=-=-=-=-=
		Menu
		[1] Criar lista
		[2] Adicionar tarefa
		[3] Mostrar tarefas
		[4] Salvar arquivo
		[5] Ler arquivo
		[0] Sair
		"
	end

	def show
		menu
	end
end

module Promptable
	def prompt(message = 'What whould you like to do?', symbol = ':> ')
		print message
		print symbol
		gets.chomp
	end
end

include Menu
include Promptable

until ["0"].include?(user_input = prompt(show))
	case user_input
	when "1"
		list = List.new(prompt("Nome da lista"))
		
	when "2"
		list ? list.add_task(prompt("Descrição da tarefa")) : error_message.call	

	when "3"
		list ? list.show_all : error_message.call
	
	when "4"
		list ? list.write_to_file(prompt("Nome do arquivo")) : error_message.call

	when "5"
		list = List.new('')
		list.read_task_file(prompt("Nome do arquivo"))
	else
		puts "erro de butao"
	end
	#prompt('Press enter to continue', '')
end
puts 'Eh nois - Thanks for using the menu system!'