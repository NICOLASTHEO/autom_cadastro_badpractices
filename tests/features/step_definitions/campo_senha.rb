Dado('que preencho o formulário') do
    visit ('/')
    
end
Quando('lanço uma senha com menos de 8 dígitos') do
    fill_in(name:'name', with: "Nome Sobrenome 1234") #no campo nome é possível letras e números
    fill_in(name:'email', with: "souumemail9@ig.com")
    fill_in(name:'mobilephone', with: "11988776655")
    fill_in(name:'role', with: "Um cargo")
    fill_in(name:'cnpj', with: "43.490.424/0001-94") #a aplicação permite apenas números. 
    fill_in(name:'monthly_revenue_company', with: "1000.00") #receita dos últimos 3 meses
    fill_in(name:'amount_deal', with: "10000.00") # valor do empréstimo que gostaria de realizar
    click_on(class:'el-button el-button--primary')
    fill_in(name:'password', with:"so7dig!")
    
    sleep(7)
end

Então('recebo a informação que a senha deve ter ao menos 8 dígitos.') do 
    have_text("A senha deve possuir por pelos menos 8 caracteres.")
end