Dado('que preencho o formulário com todos os dados') do
    visit('/')
    fill_in(name:'name', with: "Nome Sobrenome 1234")
    fill_in(name:'email', with: "souumemail10@ig.com") #quando do cadastro, sempre alterar email
    fill_in(name:'mobilephone', with: "11988776655")
    fill_in(name:'role', with: "Um cargo")
    fill_in(name:'password', with: "tenho8dg")
    fill_in(name:'monthly_revenue_company', with: "1000.00") 
    fill_in(name:'amount_deal', with: "10000.00")     
end

#CNPJ inválido (inexistente ou com menos digitos)
Quando('lanço o CNPJ errado') do
    fill_in(name:'cnpj', with: "361.361.361-11") #padrão CPF - menos números que o esperado pela aplicação - OK
end                                              #quando a aplicação atinge o número máximo de números não é mais possível incluir -OK

Quando('marco o checkbox de aceite dos termos') do
    find(class:'el-checkbox__inner').click
end

Então('recebo a informação que o CNPJ é inválido.') do
    click_on(class:'el-button el-button--primary')
    have_text('CNPJ inválido, por favor verifique se está correto.')  
end


#CNPJ já cadastrado anteriormente

Quando('lanço um CNPJ anteriormente cadastrado') do
    fill_in(name:'cnpj', with:"43.490.424/0001-94")  #CNPJ já exixstente na base
end

Então('recebo a informação que o CNPJ já está em uso no sistema.') do
    have_text('O CNPJ informado já está em uso.')
    sleep(1)
end