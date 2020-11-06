
After('@logout') do #definição de Tag padrão para ação reutilizável de logoff/logout da aplicação
    find(:css, '.profil-link > a').click
    click_link('Sair')
    sleep 2
end

After do |scenario|
    nome_cenario = scenario.name.gsub(/[^A-Za-z0-9 ]/, '') #regex padroniza
    nome_cenario = nome_cenario.gsub(' ', '_').downcase! #regez que elimina espaços e padroniza minusculo para no nome das evidencias

    temp_shot = page.save_screenshot("results/screenshots/#{nome_cenario}.png") #captura do screenshot
    screenshot = Base64.encode64(File.open(temp_shot, "rb").read)
    attach(screenshot, "image/png") #salvamento do screenshot


end