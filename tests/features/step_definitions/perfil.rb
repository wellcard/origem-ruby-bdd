
  
  Dado('que estou autenticado com {string} e {string}') do |email, senha|
    visit '/login'
    sleep 2
    login.realizaLogin(email, senha)

  end
  
  Quando('eu clico no link Perfil no menu lateral') do    
    click_link 'Perfil'
    
  end

  E('edito os campos e confirmo a ação') do
    PerfilPage.new.editaPerfil

  end

  Então('visualizo meus dados editados') do 
    expect(page).to have_content('Perfil atualizado com sucesso.')
    


  end

  