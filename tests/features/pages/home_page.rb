
class HomePage
    include Capybara::DSL #(Domain Specific Language) Descreve ações que serão executadas pelo webdriver específico

    def mensagemLogin(mensagem )
        expect(page).to have_content mensagem #valida se o retorno na página contem a mensagem pré-definida no requisito

        sleep 2
    end

end