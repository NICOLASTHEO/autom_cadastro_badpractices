#Cenário: Ao preencher o formulário para linha de crédito deixo campos em branco
Dado('que preencho o formulário deixando campos em branco') do
    visit ('/')
    fill_in(name:'name', with: '')
    fill_in(name:'email', with:'' )
    fill_in(name:'mobilephone', with: "")
    fill_in(name:'role', with: "")
    fill_in(name:'cnpj', with: "")
    fill_in(name:'password', with: "")
    fill_in(name:'monthly_revenue_company', with: "") 
    fill_in(name:'amount_deal', with: "") 
end

Quando('marco o check-box de aceite.') do
    find(class:'el-checkbox__inner').click
end

Quando('clico no botão para finalizar meu cadastro') do    
    click_on(class:'el-button el-button--primary')
    sleep(3)
end

Então('recebo a informação de quais campo são obrigatórios') do
    have_text('Esse campo é obrigatório.')
end