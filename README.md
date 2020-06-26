Projeto da disciplina de Técnicas de Programação II - Primeira Fase

Integrantes do grupo:
Paulo Henrique Silva Araujo - 8941112  
Renan Costa Laiz - 9779089

-------------------------------------------------------------------------------
Versões utilizadas

Ruby: ruby 2.6.3p62 (2019-04-16 revision 67580) [x86_64-linux]

Ruby on Rails: Rails 5.1.7

-------------------------------------------------------------------------------
Introdução

O projeto consiste em criar uma plataforma que possa ser utilizada como um repositório de manuais, seja de eletrodomésticos, móveis de escritório, carros, entre outros bens de consumo duráveis. 

A plataforma permite que o próprio usuário faça o upload de um manual, sendo necessária uma autenticação, e permite que este faça a pesquisa de manuais que ele esteja procurando, sem a necessidade de se autenticar. Com isso, produtos que já saíram de linha ou produtos de empresas pequenas, que não são facilmente achados na internet, possam estar no repositório e serem utilizados por outros usuários da plataforma.

Na aplicação temos um controlador, o manuals_controller.rb. Temos dois modelos, um referente ao usuário e outro referente aos manuais (que precisarão ser integrados um com o outro). Temos basicamente 4 views, a página inicial, uma página de pesquisa de manuais, outra de envio de manuais e uma que trata sobre a plataforma, fora as views de cada manual. O usuário precisa se autenticar apenas quando for fazer o envio do formulário (preferimos fazer dessa forma para evitar o envio de dados não compatíveis, assim como para dar os créditos ao usuário que fez o envio do manual). Para autenticação utilizamos a gem Devise. Os testes foram escritos em "user_spec.rb".

-------------------------------------------------------------------------------
O que falta fazer

1. Ajustar e sofisticar o formulário, para que o usuário possa procurar um produto com base no tipo, marca ou código, de maneira individual. Também é necessário o ajuste para que o formulário pesquise por palavras semelhantes ou com diferentes grafias, por exemplo, se o usuário digitar "brastem" em vez de "brastemp", a pesquisa deve ser capaz de localizar o produto. Por enquanto apenas inputs exatos serão localizados no formulário.

2. Ajustar o formulário de envio de manuais para aceitar o upload de documentos (.pdf e talvez outros formatos, como os de imagem) e armazená-los no S3 do AWS. 

3. Linkar o manual enviado pelo usuário com a sua conta correspondente. Dando assim, os créditos necessários ao usuário que fez o upload.

4. Um sistema de avaliação dos manuais, não queremos que o manual simplesmente entre na database, é importante que haja uma verificação antes de se aceitar os dados e o manual, assim como podemos corrigir eventuais erros cometidos pelo usuário

5. Lapidamento das views, completar a página da descrição sobre a aplicação e outros pequenos ajustes, como os de tradução, por exemplo.

6. Hospedar a aplicação no Heroku

7. Eventuais outras questões que possam aparecer durante o desenvolvimento do projeto.

-------------------------------------------------------------------------------
Eventuais problemas

Caso haja o erro "Webpacker::Manifest::MissingEntryError"

Rodar o yarn
$ yarn
