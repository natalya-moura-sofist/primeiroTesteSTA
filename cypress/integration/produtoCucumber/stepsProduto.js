import {Given, When, Then} from "cypress-cucumber-preprocessor/steps"
import Logins from '../../support/pages/login/index'
import Produtos from '../../support/pages/produto/index'


Given(/^que o usuário está na página de produto$/, () => {
	Logins.acessarPagina();
    Logins.preencherLoginValido();
});


//Caminho feliz para compra de um produto
When(/^o usuário tenta realizar uma compra$/, () => {
	Produtos.adicionarProdutoNoCarrinhoEPreenchercadastro();
});

Then(/^a compra é realizada com sucesso$/, () => {
	Produtos.confimaçaoDeCompra();
});


//Caminho feliz para compra de um produto com xpath
When(/^tenta realizar uma compra$/, () => {
	Produtos.adicionarProdutoNoCarrinhoEPreenchercadastroXpath();
});

Then(/^a mesma deve ser realizada com sucesso$/, () => {
	Produtos.confimaçaoCompraXpath();
});



