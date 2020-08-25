#language:pt

Funcionalidade: Perfil
    Para que eu possa gerenciar os dados do meu perfil
    Sendo um usuário
    Posso acessar o sistema com meu email e senha previamente cadastrados

@logout
Cenario: Editar nome
    Dado que estou autenticado com "wellington.testes@email.com" e "123456"
    Quando eu clico no link Perfil no menu lateral
    E edito os campos e confirmo a ação
    Então visualizo meus dados editados
