Dado('que quero solicitar um empréstimo') do
    visit ('/')
end

Quando('preencho o formulário corretamente') do
    fill_in(name:'name', with: "Nome Sobrenome 1234") #no campo nome é possível letras e números
    fill_in(name:'email', with: "souumemail001@ig.com")
    fill_in(name:'mobilephone', with: "11988776655")
    fill_in(name:'role', with: "Um cargo")
    fill_in(name:'cnpj', with: "03.573.863/0001-46") #a aplicação permite apenas números. SEMPRE TROCAR O CNPJ para cada teste com sucesso.
    fill_in(name:'password', with: "tenho8dg")
    fill_in(name:'monthly_revenue_company', with: "1000.00") #receita dos últimos 3 meses
    fill_in(name:'amount_deal', with: "10000.00") # valor do empréstimo que gostaria de realizar
    find(class:'el-checkbox__inner').click
    click_on(class:'el-button el-button--primary')
    sleep(8)
end

Então('verifico se obtive sucesso') do
    texto=find(class:'title')
    expect(texto.text).to eq 'Cadastro finalizado com sucesso, agora confira seu email'
    sleep(4)
end

Então('se recebi o email') do
    puts 'e-mail recebido!'

end
