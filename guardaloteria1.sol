pragma solidity 0.5.12;

contract GuardaLoteria {
    
    uint numeroSorteado;
    address dono;
    uint contadorDeSorteios = 0;
    bool donoRico = false;
    
    constructor (uint numeroInicial) public {
        
        numeroSorteado = numeroInicial;
        dono = msg.sender;
        contadorDeSorteios = 1;
        if (msg.sender.balance > 20000000 finney) {
            donoRico = true;
        }
        else {
            donoRico = false;
        }
    }
    
    modifier comCustoMinimo (uint min) {
        require(msg.value >= min, "Não foi enviado Ether suficiente.");
        _;
    }
    
    function set(uint enviado) public payable comCustoMinimo(1000) {
        numeroSorteado = enviado;
        contadorDeSorteios ++;
        
        if (msg.value > 1000) {
            uint troco = msg.value - 1000;
            msg.sender.transfer (troco);
            emit trocoEnviado(msg.value);
        }
    }
    
    event trocoEnviado (uint troco);
    
     function saldoNoContrato () public view returns (uint) {
        return address(this).balance;
     }
    
    function get () public view returns (uint) {
        return numeroSorteado;
    }
    
    function contador() public view returns (uint){
        return contadorDeSorteios;
    }
    
    function Dono () public view returns (address) {
        return dono;
    }
    
    function Rico () public view returns (bool){
        return donoRico;
    }
}
