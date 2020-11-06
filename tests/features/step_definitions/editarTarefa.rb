
Dado('que estou autenticado com perfil de edição') do
    visit '/login'
    sleep 2
    LoginPage.new.realizaLogin("wellington.testes@email.com", "123456")

  end
  
  Quando('eu clico no botão Editar em algum registro na listagem') do
    find(:css, 'tr:nth-child(1) #edit-button').click

  end
  
  E ('preencho os campo obrigatórios Nome, Data de Entrega e Tags e aciono o botão Atualizar') do
    TarefasPage.new.editaTarefa

end

  Então('visualizo o registro alterado na listagem') do
    expect(page).to have_content @nomeTarefaEditado

  end