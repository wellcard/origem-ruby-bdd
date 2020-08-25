
  Dado('que estou autenticado com perfil de exclusão') do
    visit '/login'
    sleep 2
    LoginPage.new.realizaLogin("wellington.testes@email.com", "123456")

  end
  
  Quando('eu clico em Apagar') do
    find(:css, 'tr:nth-child(1) #delete-button').click

    
  end
  
  E('confirmo a remoção da Tarefa') do
    click_button 'Sim'


  end
  
  Então('visualizo o registro removido da listagem') do

  end