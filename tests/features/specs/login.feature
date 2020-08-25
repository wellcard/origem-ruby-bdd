#language:pt

Funcionalidade: Login
    Para que eu possa cadastrar e gerenciar minhas tarefas
    Sendo um usuário
    Posso acessar o sistema com meu email e senha previamente cadastrados

Contexto: Página principal
    Dado que eu acesso a página principal

Esquema do Cenario: Tentativas de login

    Quando eu faço login com "<email>" e "<senha>"
    Então devo ver a seguinte mensagem "<alerta>"


    Exemplos:
    | email                         | senha         | alerta                        |
    | wellington.testes@email.com   | 123457        | Senha inválida.               |
    | wellington.testes123@email.com| 123456        | Usuário não cadastrado.       |
    | wellingtonpaixao              | 123456        | Email incorreto ou ausente.   |

@logout
Cenario: Usuario deve estar autorizado

    Quando eu faço login com "wellington.testes@email.com" e "123456"
    Então devo ser autenticado com sucesso
    E devo ver a seguinte mensagem "Olá, Wellington"



