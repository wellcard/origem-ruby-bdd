

Dado('que estou autenticado com perfil de Finalização') do
    visit '/login'
    sleep 2
    LoginPage.new.realizaLogin("wellington.testes@email.com", "123456")

  end
  
  Quando('eu clico no botão para a finalização da tarefa') do
    find(:css, 'tr:nth-child(1) #done-task').click

    
  end
  
  Então('visualizo o registro com o status atualizado na listagem') do
    expect(page).to have_css(".label.label-success")
    
  end