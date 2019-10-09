pragma solidity 0.5.12;
// usar essas barras para alguma observação ou comentário, em uma só linha que nao vai sair no texto
/* usa para escrever várias linhas de cometário que não deve constar do texto
VARIÁVEIS
Para inserir uma variável no contrato, definir um tipo de dado no solidity, dar um nome à variável: string = "texto" 
a variável pode ser publica - todos podem ver - ou provada - nao vai aparecer.
variável: String = "texto" 
uint256 ou uint = numero inteiro
adderess = endereço ethereum
bool = verdadeiro ou falso
dado fixo ou constante = uint256 constant ou uint constant = "dado"
usando várias linhas e encerra com
*/
contract Aluguel {
    string public locador;
    string public locatario;
    uint256 private valor; 
    uint256 constant numeroMaximoLegalDeAluguelParaMulta = 3;
    constructor(string memory nomeLocador, string memory nomeLocatario, uint256 valorDoAluguel) 
    public {
        locador = nomeLocador;
        locatario = nomeLocatario;
        valor = valorDoAluguel;
    }
    
    function valorDoAluguel() public view returns (uint256) {
        return valor;
    }
    
    function simulaMulta (uint256 mesesRestantes, uint256 totalMesesContrato)
    public
    view
    returns (uint256 valorMulta)
    {
        valorMulta = valor*numeroMaximoLegalDeAluguelParaMulta;
        valorMulta = valorMulta/totalMesesContrato;
        valorMulta = valorMulta*mesesRestantes;
        return valorMulta;
    } 

    function reajusteAluguel (uint256 percentualReajuste) public
    {
        if (percentualReajuste > 20)
        {
            percentualReajuste = 20;
        }
        uint256 valorDoAcrescimo = 0;
        valorDoAcrescimo = ((valor*percentualReajuste)/100);
        valor = valor + valorDoAcrescimo;
    }
    
    function aditamentoValorAluguel(uint256 valorCerto) public
    {
        valor = valorCerto;
    }
    
    function aplicaMulta(uint256 mesesRestantes, uint256 percentual) public
    {
        require(mesesRestantes<30, "periodo de contrato invalido");
        for (uint i=1; i<mesesRestantes; i++) {
            valor = valor+((valor*percentual)/100); 
        }
    }
}
