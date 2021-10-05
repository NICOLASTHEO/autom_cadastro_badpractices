#language: pt


Funcionalidade: Preenchimento Formulário com CNPJ inválido

@cnpj_invalido
Cenário: Ao preencher o formulário para linha de crédito lanço meu CNPJ errado

Dado que preencho o formulário com todos os dados
Quando lanço o CNPJ errado
E marco o checkbox de aceite dos termos
E clico no botão para finalizar meu cadastro
Então recebo a informação que o CNPJ é inválido.

@cnpj_duplicado
Cenário: Ao preencher o formulário para linha de crédito lanço um CNPJ já cadastrado anteriormente

Dado que preencho o formulário com todos os dados
Quando lanço um CNPJ anteriormente cadastrado
E marco o checkbox de aceite dos termos
E clico no botão para finalizar meu cadastro
Então recebo a informação que o CNPJ já está em uso no sistema.