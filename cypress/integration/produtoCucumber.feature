Feature: Compra de produtos 

    Como usuário logado no site da Swab Labs, desejo 
    Efetuar a compra de um produto

@focus
Scenario: Caminho feliz para compra de um produto

    Given que o usuário está na página de produto
    When o usuário tenta realizar uma compra
    Then a compra é realizada com sucesso

@xpath
Scenario: Caminho feliz para compra de um produto com xpath

    Given que o usuário está na página de produto
    When tenta realizar uma compra
    Then a mesma deve ser realizada com sucesso










    