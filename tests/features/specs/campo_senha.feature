#language: pt


Funcionalidade: Preenchimento Formulário - Campo senha

@senha_invalida
Cenário: Ao preencher o formulário para linha de crédito tento cadastrar senha com menos de 8 dígitos.

Dado que preencho o formulário
Quando lanço uma senha com menos de 8 dígitos
E marco o checkbox de aceite dos termos
E clico no botão para finalizar meu cadastro
Então recebo a informação que a senha deve ter ao menos 8 dígitos.