#Cenário: Ao preencher o formulário para linha de crédito, no campo nome completo coloco somente um nome 
Dado('que preencho o campo nome completo do formulário com somente um nome') do
    visit('/')
    fill_in(name:'name', with: 'Nome')
end

Então('recebo a informação para digitar também ao menos um sobrenome') do
    have_text('Favor digitar ao menos um sobrenome.')
end