pragma solidity 0.5.8
contract GuardaLoteria {
uint numeroSorteado;
function set(uint enviado) public {
numeroSorteado = enviado;
}
function get () public view returns (uint) {
return numeroSorteado;
}
}
