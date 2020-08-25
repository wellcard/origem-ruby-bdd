
class PerfilPage
    include Capybara::DSL #(Domain Specific Language) Descreve ações que serão executadas pelo webdriver específico

    def generate_code(number) #método gerador de strings
        charset = Array('A'..'Z') + Array('a'..'z')
        Array.new(number) { charset.sample }.join
    end

    def editaPerfil
        @companhiaGerado = generate_code(8)

        find('input[id=profile-company]').set @companhiaGerado #insere no elemento tipo 'input' uma string gerada pelo método com 8 caracteres
      
        select(['Developer', 'QA', 'CEO', 'CTO', 'Estagiario'].sample, from: 'profile.job') #seleciona randomicamente um valor da combobox
     
        click_button 'Salvar' #clica no botão com o texto 'Salvar'
  
    end
end