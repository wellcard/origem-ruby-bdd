
Dir[File.join(File.dirname(__FILE__),
                '../pages/*_page.rb')].each { |file| require file } #definição de padrão de extenção de nome de classe

module Pages
    def login
        @login ||= LoginPage.new #instância de classe que é aplicada a padronização de extensão
    end
end