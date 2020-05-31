#language: pt

Funcionalidade: Login
    Para que eu possa gerenciar conta e realizar compras
    Sendo um usuário previamente cadastrado
    Posso acessar o sistema com meu e-mail e senha
    
    @login_happy
    Cenario: Acesso
        Quando eu faço login com "spapesnunes@gmail.com" e "123456"
        Então devo ser autenticado
        E devo ver "Sabrina Nunes" na área logada

    @login_hapless
    Esquema do Cenario: Login sem sucesso
        Quando eu faço login com <email> e <senha>
        Então devo ver a mensagem de alerta <texto>

        Exemplos:
            | email                    | senha     | texto                          |
            | "spapesnunes@gmail.com"  | "456123"  | "Authentication failed."       |
            | "outro@gmail.com"        | "123456"  | "Authentication failed."       |
            | ""                       | "123452"  | "An email address required."   |
            | "outro@gmail.com"        | ""        | "Password is required."        |