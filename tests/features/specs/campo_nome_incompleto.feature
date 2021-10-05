#language: pt

Funcionalidade: Preenchimento de formulário

@campo_nome_incompleto
Cenário: Ao preencher o formulário para linha de crédito, no campo nome completo coloco somente um nome

Dado que preencho o campo nome completo do formulário com somente um nome
Quando clico no botão para finalizar meu cadastro
Então recebo a informação para digitar também ao menos um sobrenome