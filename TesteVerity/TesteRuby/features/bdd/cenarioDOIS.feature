# language: pt
# encoding: utf-8

Funcionalidade: Preencher formulário de contato no site da Verity

Cenário: Enviar formulário de contato com sucesso

  Dado o usuario acesse o site da Verity em "https://verity.com.br/"
  Quando eu clico no menu "Contato" e na sessão "Vamos Conversar"
  E preencho o formulário com os seguintes dados:
    | campo             | valor                       |
    | Nome              | Guilherme Soares                    |
    | Email             | gulheimar@yahoo.com.br        |
    | Telefone / Celular    | 22981248202             |
    | Nos conte o seu desafio | fazer o possível para melhorar meus conhecimentos e auxiliar a empresa a ter um desempenho de qualidade maior.                     |
    | Aceito receber mensagens da Verity | true  |
  E clico no botão "Enviar"
  Então eu devo ver a mensagem "Obrigado por entrar em contato. Em breve, nossa equipe entrará em contato com você."
