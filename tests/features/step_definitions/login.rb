
  Dado('que eu acesso a página principal') do
    visit '/login'
    sleep 2
    expect(page).to have_text('Fazer Login no Mark7')
    sleep 2
    
  end
  
  Quando('eu faço login com {string} e {string}') do |email, senha|
    @email = email 
    
    login.realizaLogin(email, senha)

  end

  Então('devo ser autenticado com sucesso') do 
    expect(page).to have_content @email

  end

  E('devo ver a seguinte mensagem {string}') do |mensagem|
    expect(page).to have_content mensagem
    
  end
  
  