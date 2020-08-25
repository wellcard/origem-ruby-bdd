
class TarefasPage
    include Capybara::DSL

    def generate_code(number)
        charset = Array('A'..'Z') + Array('a'..'z')
        Array.new(number) { charset.sample }.join
    end

    def novaTarefa
        @nomeTarefaGerado = generate_code(10)
       
        find('input[id=title]').set @nomeTarefaGerado #insere no elemento tipo 'input' uma string gerada pelo método com 10 caracteres
    
        find('input[id=dueDate]').set Date.today.strftime('%d/%m/%Y') #insere no elemento tipo 'input' a data de hoje gerada pelo método nativo

        find(:xpath, '//div[4]/div/div/input').set 'TagTeste' #insere no elemento tipo 'input' uma string fixa
 
        
        click_button 'Cadastrar' #clica no botão com o texto 'Cadastrar'

    end

    def editaTarefa
        @nomeTarefaEditado = generate_code(5)
        @tagGerada = generate_code(3)

        find('input[name=title]').set @nomeTarefaEditado #insere no elemento tipo 'input' uma string gerada pelo método  com 5 caracteres
 
        find(:xpath, '//div[4]/div/div/input').set @tagGerada #insere no elemento tipo 'input' uma string gerada pelo método com 3 caracteres

        find(:xpath, '//div[4]/div/div/input').send_keys(:enter) #executa a ação humana de press_enter no campos Tag
 
        
        click_button 'Atualizar' #clica no botão com o texto 'Atualizar'

    end

end
