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
O desafio foi formulado para o banco de dados MySQL, no entanto, problemas de
na instalação do MySQL me impediram de utilizá-lo. Sendo assim, o banco de dados
usado para realizar o desafio foi o SQLite3, que é default do Rails.
Comuniquei à Sólides essa questão e me coloquei à disposição para apresentar
esse projeto utilizando o PostgreSQL.
Na tentativa de solucionar o problema do MySQL, criei outro projeto, que é esse
que entrego, contendo o mesmo aplicativo, todavia não utilizei branches no git.
