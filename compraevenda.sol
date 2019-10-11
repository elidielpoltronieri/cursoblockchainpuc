pragma solidity 0.5.12;
contract CompraeVenda {
    string public Vendedor; 
    string public Comprador;
    string public Bem;
    uint256 private valor;
    uint public Prazo;
    string public data;
    
    constructor(
    string memory nomeVendedor, 
    string memory nomeComprador,
    string memory dataDoContrato,
    uint256 valorDoBem
    uint prazoDePagamento)
    public 
    {
        vendedor = nomeVendedor;
        comprador = nomeComprador;
        bem = nomeDoBem;
        valor = valorDoBem;
        Prazo = prazoDePagamento;
        data = dataDoContrato;
    }
    
    function valorDoBem() public view returns (uint256) {
        return valor;
    }
    
    function simulaMulta (uint256 mesesRestantes, uint256 MesesContrato)
    public
    view
    returns (uint256 valorMulta)
    {
        valorMulta = valor*percentualDeMulta;
        valorMulta = valorMulta*mesesRestantes;
        return valorMulta;
    } 
    
    function aplicaMulta(uint256 mesesRestantes, uint256 percentual) public
    {
        mesesRestantes = Prazo-
        for (uint i=1; i<mesesRestantes; i++) {
            valor = valor+((valor*percentual)/100); 
        }
    }
}
