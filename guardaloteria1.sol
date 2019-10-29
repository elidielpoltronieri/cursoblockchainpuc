pragma solidity 0.5.8
contract GuardaLoteria {
uint numeroSorteado;
address dono;
uint contadorDeSorteios = 0;
bool DonoRico = false;

constructor (uint numeroInicial) public {
require (msg.sender.balance > 99,99999999999 ether;

numeroSorteado = numeroInicial;
dono = msg.sender;
contadorDeSorteios = 1;

if (msg.sender.balance > 20 ether) {
donoRico = true;
}
else {
donoRico = false);

function set(uint enviado) public {
nuemroSorteado = enviado;
contadorDeSorteios = ++;
}
function get () public view returns (uint) {
return numeroSorteado;
}

function get contador() public view returns (uint)
return contadorDeSorteios;
}

function get Dono () public view returns (adderess) {
return dono;
}

function get Rico () public view returns (bool){
return donoRico;
}
}
