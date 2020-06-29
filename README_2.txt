Projeto da disciplina de Técnicas de Programação II - Segunda Fase

Integrantes do grupo:
Paulo Henrique Silva Araujo - 8941112  
Renan Costa Laiz - 9779089

-------------------------------------------------------------------------------
Versões utilizadas

Ruby: ruby 2.7.0

Ruby on Rails: Rails 6.0.2

-------------------------------------------------------------------------------
Introdução

O projeto consiste em criar uma plataforma que possa ser utilizada como um repositório de manuais, seja de eletrodomésticos, móveis de escritório, carros, entre outros bens de consumo duráveis. 

A plataforma permite que o próprio usuário faça o upload de um manual, sendo necessária uma autenticação, e permite que este faça a pesquisa de manuais que ele esteja procurando, sem a necessidade de se autenticar. Com isso, produtos que já saíram de linha ou produtos de empresas pequenas, que não são facilmente achados na internet, possam estar no repositório e serem utilizados por outros usuários da plataforma.

Na aplicação temos um controlador, o manuals_controller.rb. Temos dois modelos, um referente ao usuário e outro referente aos manuais (que precisarão ser integrados um com o outro). Temos basicamente 4 views, a página inicial, uma página de pesquisa de manuais, outra de envio de manuais e uma que trata sobre a plataforma, fora as views de cada manual. O usuário precisa se autenticar apenas quando for fazer o envio do formulário (preferimos fazer dessa forma para evitar o envio de dados não compatíveis, assim como para dar os créditos ao usuário que fez o envio do manual). Para autenticação utilizamos a gem Devise. Os testes foram escritos em "user_spec.rb".

-------------------------------------------------------------------------------
O que falta fazer

1. Armazenar os documentos enviados (podendo ser .pdf, .png ou .jpeg) no S3 da AWS. Por enquanto os manuais estão sendo armazenados localmente, preferimos associar a nossa plataforma com o S3 da Amazon quando hospedarmos a plataforma no Heroku.

2. Linkar o manual enviado pelo usuário com a sua conta correspondente. Dando assim, os créditos necessários ao usuário que fez o upload.

3. Um sistema de avaliação dos manuais, não queremos que o manual simplesmente entre na database, é importante que haja uma verificação antes de se aceitar os dados e o manual, assim como podemos corrigir eventuais erros cometidos pelo usuário

4. Hospedar a aplicação no Heroku (Fase Final)

5. Eventuais outras questões que possam aparecer durante o desenvolvimento do projeto.

-------------------------------------------------------------------------------
Aspectos Técnicos do Projeto

-------------------------------------------------------------------------------
Eventuais problemas

Caso haja o erro "Webpacker::Manifest::MissingEntryError"

Rodar o yarn
$ yarn
