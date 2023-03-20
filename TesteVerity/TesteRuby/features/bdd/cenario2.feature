# language: pt
# encoding: utf-8

Funcionalidade: Preencher formulário de contato no site da Verity

Cenário: Enviar formulário de contato com sucesso

  Dado o usuario acesse o site da Verity em "https://verity.com.br/"
  Quando eu clico no menu "Contato" e na sessão "Vamos Conversar"
  E preencho o formulário com os seguintes dados
  E clico no botão Enviar
  Então eu devo ver a mensagem "Obrigado por entrar em contato. Em breve, nossa equipe entrará em contato com você."
