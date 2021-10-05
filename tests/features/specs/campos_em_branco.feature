#language: pt


Funcionalidade: Deixando campos em branco no formulário

@campos_em_branco
Cenário: Ao preencher o formulário para linha de crédito deixo campos em branco

Dado que preencho o formulário deixando campos em branco
Quando marco o check-box de aceite.
Quando clico no botão para finalizar meu cadastro
Então recebo a informação de quais campo são obrigatórios