Timesheet App
Aplicativo de Gestão de Tempo
--------------------------------

Sigas as instruções abaixo para utilizar o aplicativo:
- Clone o repositório
- Rode o comando "bundle install"
- Rode o servidor "rails s"
- Acesse o aplicativo no seu navegador em "https://localhost:3000"
- Faça Login/Registro de seu usuário

--------------------------------------------------------------------------------
- Caso seu usuário já possua cadastro e registros no timesheet, os mesmos serão
exibidos na página inicial
- Caso ainda não possua registro no timesheet, acesse a página do Timesheet por
meio do link na página inicial ou na barra de navegação
--------------------------------------------------------------------------------

- Na página do Timesheet, clique em "Novo Registro" para ser redirecionado
- No formulário, escolha a descrição do registro a ser realizado (a saber):
"Início de expediente", "Início de almoço", "Fim de almoço", "Fim de expediente"
- O projeto está previamente selecionado.
- Clique no botão "Criar Registro" para salvar os dados

--------------------------------------------------------------------------------
- A página Timesheet exibe os detalhes dos registros realizados
- A página inicial, que pode ser acessada pelo link na logo do aplicativo, exibe
o resumo dos registros com o cálculo de duração do expediente e do almoço
--------------------------------------------------------------------------------

- Os dados registrados só podem ser alterados por meio das rotas do Rails
- Para editar os dados do projeto acesse "https://localhost:3000/project/1/edit"
- O aplicativo contabiliza 4 registros por dia

Observação:
O desafio foi realizado usando o PostgreSQL como banco de dados, tendo em vista problemas com o MySQL.
O app poderia ser melhorado, mas devido o receio de perder o prazo de entrega, optei por entregar a versao mais simples.
