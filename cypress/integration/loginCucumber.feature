 #language: pt
 
Funcionalidade: Login

        Como usuário, desejo acessar o site do Swag Labs com usuário e senha
        e ser redirecionado para a página de produtos

<<<<<<< HEAD
    Contexto:
        Dado que o usuário esta na página de login

    @Login
    Cenario: Fazer Login na plataforma com sucesso
        Quando realiza o login com usuario e senha válidos
        Entao é direcionado para a página de produtos

    @NaoFazLogin 
    Cenario: Fazer Login na plataforma com usuário bloqueado
        Quando tenta realizar o login com usuário bloqueado e senha válida
        Entao será exibida uma mensagem de erro de usuário bloqueado
 
    @Login
    Cenario: Fazer Login na plataforma com usuário problemático
        Quando realiza o login com usuário problemático e senha válida        
        Entao será direcionado para a página de produtos
    
    @NaoFazLogin 
    Cenario: Fazer Login na plataforma com usuário em branco
        Quando tenta realizar o login com usuário em branco        
        Entao será exibida uma mensagem de erro requerindo um usuário

    @NaoFazLogin 
    Cenario: Fazer Login na plataforma com senha em branco e usuário preenchido
        Quando o usuário tenta realizar o login com senha em branco e usuário preenchido
        Entao será exibida uma mensagem de erro requerindo uma senha

    @NaoFazLogin 
    Cenario: Fazer Login na plataforma com senha inválida e usuário preenchido
        Quando o usuário tenta realizar o login com senha inválida e usuário preenchido
        Entao será exibida uma mensagem de erro de usuário e senha não combinam
=======
    @Login
    Scenario: Fazer Login na plataforma com sucesso
        Given que o usuário esta na página de login
        When realiza o login com usuario e senha válidos
        Then é direcionado para a página de produtos

    @NaoFazLogin 
    Scenario: Fazer Login na plataforma com usuário bloqueado
        Given que o usuário esta na página de login
        When tenta realizar o login com usuário bloqueado e senha válida
        Then será exibida uma mensagem de erro de usuário bloqueado
 
    @Login
    Scenario: Fazer Login na plataforma com usuário problemático
        Given que o usuário esta na página de login
        When realiza o login com usuário problemático e senha válida        
        Then será direcionado para a página de produtos
    
    @NaoFazLogin 
    Scenario: Fazer Login na plataforma com usuário em branco
        Given que o usuário esta na página de login
        When tenta realizar o login com usuário em branco        
        Then será exibida uma mensagem de erro requerindo um usuário

    @NaoFazLogin 
    Scenario: Fazer Login na plataforma com senha em branco e usuário preenchido
        Given que o usuário esta na página de login
        When o usuário tenta realizar o login com senha em branco e usuário preenchido
        Then será exibida uma mensagem de erro requerindo uma senha

    @NaoFazLogin 
    Scenario: Fazer Login na plataforma com senha inválida e usuário preenchido
        Given que o usuário esta na página de login
        When o usuário tenta realizar o login com senha inválida e usuário preenchido
        Then será exibida uma mensagem de erro de usuário e senha não combinam
>>>>>>> 7845d04621839caac9b56913c47a5fe3105498b4

    
 
