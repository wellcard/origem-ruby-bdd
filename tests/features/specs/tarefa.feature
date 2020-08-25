#language:pt

Funcionalidade: Tarefas
    Para que eu possa cadastrar e gerenciar minhas tarefas
    Sendo um usuário
    Posso acessar o sistema com meu email e senha previamente cadastrados

@logout
Cenario: Cadastrar tarefa
    Dado que estou autenticado com perfil de cadastro
    Quando eu clico no botão Nova Tarefa
    E preencho os campo obrigatórios Nome, Data de Entrega e Tags e aciono o botão Cadastrar  
    Então visualizo o registro inserido na listagem

@logout
Cenario: Editar tarefa
    Dado que estou autenticado com perfil de edição
    Quando eu clico no botão Editar em algum registro na listagem
    E preencho os campo obrigatórios Nome, Data de Entrega e Tags e aciono o botão Atualizar  
    Então visualizo o registro alterado na listagem

@logout
Cenario: Finalizar tarefa
    Dado que estou autenticado com perfil de Finalização
    Quando eu clico no botão para a finalização da tarefa
    Então visualizo o registro com o status atualizado na listagem

@logout
Cenario: Excluir tarefa
    Dado que estou autenticado com perfil de exclusão
    Quando eu clico em Apagar
    E confirmo a remoção da Tarefa
    Então visualizo o registro removido da listagem
