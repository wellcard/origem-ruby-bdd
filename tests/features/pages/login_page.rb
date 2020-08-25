
class LoginPage
    include Capybara::DSL #(Domain Specific Language) Descreve ações que serão executadas pelo webdriver específico

    def idLoginPage()
        expect(page).to have_text('Fazer Login no Mark7') #valida se o retorno na Home contem o parâmetro string
        sleep 2

    end

    def realizaLogin(email, senha)
        find('input[name=email]').set email #insere no elemento tipo 'input' um parâmetro pré-definida no requisito
     
        find('input[name=password]').set senha #insere no elemento tipo 'input' um parâmetro pré-definida no requisito
       

        click_button 'Login' #clica no botão com o texto 'Login'

    end

end

