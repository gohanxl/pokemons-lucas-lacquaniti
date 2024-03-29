<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
            crossorigin="anonymous"></script>
    <title>Pokedex</title>
</head>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="/pokemons-lacquaniti-lucas"><img
                src="/pokemons-lacquaniti-lucas/public/img/pokeball.png"
                width="30" height="30" style="margin-bottom: 3px; margin-right: 3px;"> Pokedex
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02"
            aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class='collapse navbar-collapse' id='navbarTogglerDemo02'>
        <ul class='navbar-nav mr-auto mt-2 mt-lg-0'>
            <?php
            if (isset($_SESSION['logged'])) {
                echo "

                            <li class='nav-item active'>
                                <a class='nav-link' href='/pokemons-lacquaniti-lucas/pokemons/alta'>Agregar Pokemon</a>
                            </li>
                            <li class='nav-item active'>
                                <a class='nav-link' href='/pokemons-lacquaniti-lucas/tipos/alta'>Agregar Tipo</a>
                            </li>
                        </ul>
                    <button class='btn btn-outline-light my-2 my-sm-0' onclick=\"window.location.replace('/pokemons-lacquaniti-lucas/logout')\">Cerrar sesión</button>
                    </div>";
            } else {
                echo "
                        </ul>
                        <button class='btn btn-outline-light my-2 my-sm-0' type='submit' onclick=\"window.location.replace('/pokemons-lacquaniti-lucas/login')\">Iniciar sesión</button>
                        </div>
                        ";
            }
            ?>
</nav>
<body>
<div class="container mt-5">