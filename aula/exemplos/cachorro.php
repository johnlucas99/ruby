<?php
    class Cachorro{
        public $nome, $raca;
        
        public function Cachorro($nome, $raca){
            $this->nome = $nome;
            $this->raca = $raca;
        }
        
        public function latir(){
            echo "$this->nome : AU AU";
        }
        
        public function mostrarRaca(){
            echo "Minha raca eh: $this->raca";
        }
    }
    
    $c = new Cachorro("RYU","BC");
    $c->latir();
    $c->mostrarRaca();
?>