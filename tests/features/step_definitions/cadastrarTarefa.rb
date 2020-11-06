
  Dado('que estou autenticado com perfil de cadastro') do
    visit '/login'
    sleep 2
    LoginPage.new.realizaLogin("wellington.testes@email.com", "123456")

  end
  
  Quando('eu clico no botão Nova Tarefa') do
    click_button 'Nova Tarefa'
 
  end
  
  E('preencho os campo obrigatórios Nome, Data de Entrega e Tags e aciono o botão Cadastrar') do 
    TarefasPage.new.novaTarefa

  end
  
  Então('visualizo o registro inserido na listagem') do
    expect(page).to have_content @nomeTarefaGerado


  end