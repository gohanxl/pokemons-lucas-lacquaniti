<?php
    function getConfigAsArray(){
        return parse_ini_file('config/config.ini', true);
}

define('pokemons-lacquaniti-lucas', dirname(__FILE__));