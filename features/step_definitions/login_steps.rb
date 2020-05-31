Quando("eu faço login com {string} e {string}") do |email, password|
    @login.go
    @login.with(email,password)
end
  
Então("devo ser autenticado") do
    expect(@nav_bar.sign_out).to eql "Sign out"
end
  
Então("devo ver {string} na área logada") do |expect_name|
    expect(@nav_bar.logged_user).to eql expect_name
end

Então("devo ver a mensagem de alerta {string}") do |expect_message|
    expect(@login.alert).to eql expect_message
end

sleep 3