    
    class login {

        acessarPagina (){

            cy.visit('/');

        };

       
        preencherLoginValido() {

            cy.get('[data-test=username]').type(`${Cypress.env('usuarioAutorizado')}`);
            cy.get('[data-test=password]').type(`${Cypress.env('senhaAutorizada')}`);
            cy.get('[data-test=login-button]').click();  

        };
        
        assertivaLoginValido(){

            cy.get('.title').should('contain', 'Products');
            cy.screenshot('paginaDeProdutos');

        };

        preencherLoginBloqueado() {

            cy.get('[data-test=username]').type('locked_out_user');
            cy.get('[data-test=password]').type(`${Cypress.env('senhaAutorizada')}`); 
            cy.get('[data-test=login-button]').click();  
      
        };

        assertivaLoginBloqueado(){

            cy.get('[data-test=error]').should('contain', 'Epic sadface: Sorry, this user has been locked out.'); 
            cy.screenshot('mensagemDeErroBloqueado');
        };

        preencherLoginProblematico(){
        
            cy.get('[data-test=username]').type('problem_user');
            cy.get('[data-test=password]').type(`${Cypress.env('senhaAutorizada')}`);
            cy.get('[data-test=login-button]').click();  

        };

        assertivaLoginProblematico(){
            cy.get('.title').should('contain', 'Products');
            cy.screenshot('paginaDeProdutosProblematica');
        };    

        preencherUsuarioEmBranco(){
        
            cy.get('[data-test=password]').type(`${Cypress.env('senhaAutorizada')}`);
            cy.get('[data-test=login-button]').click();  

        };

        assertivaUsuarioEmBranco(){

            cy.get('[data-test=error]').should('contain', 'Epic sadface: Username is required');
            cy.screenshot('mensagemDeErroUsuario');
        };

        preencherSenhaEmBranco(){
            
            cy.get('[data-test=username]').type(`${Cypress.env('usuarioAutorizado')}`);  
            cy.get('[data-test=login-button]').click();  

        };

        assertivaSenhaEmBranco(){

            cy.get('[data-test=error]').should('contain', 'Epic sadface: Password is required');
            cy.screenshot('mensagemDeErroSenha');
        };
        
        preencherSenhaInvalida(){

            cy.get('[data-test=username]').type(`${Cypress.env('usuarioAutorizado')}`);
            cy.get('[data-test=password]').type('01');
            cy.get('[data-test=login-button]').click();  

        };

        assertivaSenhaInvalida(){

            cy.get('[data-test=error]').should('contain', 'Epic sadface: Username and password do not match any user in this service');
            cy.screenshot('mensagemDeErroDoNotMatch');
        };


};

        export default new login();