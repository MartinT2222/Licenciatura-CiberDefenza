# Soluciones - Guía Práctica 11: Funciones, modularización y formularios en PHP

## Ejercicio 1: Función limpiarDato

```php
<?php
// funciones.php

/**
 * Función para limpiar un dato eliminando etiquetas HTML y espacios en blanco
 * @param string $dato El dato a limpiar
 * @return string El dato limpio
 */
function limpiarDato($dato) {
    // Elimina etiquetas HTML y PHP
    $dato = strip_tags($dato);
    // Elimina espacios en blanco al inicio y al final
    $dato = trim($dato);
    
    return $dato;
}
?>
```

## Ejercicio 2: Formulario HTML (index.php)

```php
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario de Prueba</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        input[type="text"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>Formulario de Prueba</h1>
    <form action="procesar.php" method="post">
        <div class="form-group">
            <label for="nombre">Nombre:</label>
            <input type="text" id="nombre" name="nombre" required>
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="text" id="email" name="email" required>
        </div>
        <button type="submit">Enviar</button>
    </form>
</body>
</html>
```

## Ejercicio 3: Procesar formulario (procesar.php)

```php
<?php
// procesar.php

// Incluimos el archivo con la función limpiarDato
require_once 'funciones.php';

// Verificamos si se enviaron datos por POST
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Limpiamos los datos recibidos
    $nombre = limpiarDato($_POST['nombre']);
    $email = limpiarDato($_POST['email']);
    
    // Mostramos los datos limpios
    echo "<h1>Datos Procesados</h1>";
    echo "<p><strong>Nombre:</strong> " . htmlspecialchars($nombre) . "</p>";
    echo "<p><strong>Email:</strong> " . htmlspecialchars($email) . "</p>";
    echo "<a href='index.php'>Volver al formulario</a>";
} else {
    // Si no se enviaron datos por POST, redirigimos al formulario
    header("Location: index.php");
    exit();
}
?>

```

## Ejercicio 4 y 5: Pruebas con y sin limpieza

```php
<?php
// procesar.php

// Incluimos el archivo con la función limpiarDato
require_once 'funciones.php';

// Verificamos si se enviaron datos por POST
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Mostramos los datos originales
    echo "<h1>Datos Originales (sin limpiar)</h1>";
    echo "<p><strong>Nombre:</strong> " . htmlspecialchars($_POST['nombre']) . "</p>";
    echo "<p><strong>Email:</strong> " . htmlspecialchars($_POST['email']) . "</p>";
    
    // Limpiamos los datos recibidos
    $nombre = limpiarDato($_POST['nombre']);
    $email = limpiarDato($_POST['email']);
    
    // Mostramos los datos limpios
    echo "<h1>Datos Procesados (con limpieza)</h1>";
    echo "<p><strong>Nombre:</strong> " . htmlspecialchars($nombre) . "</p>";
    echo "<p><strong>Email:</strong> " . htmlspecialchars($email) . "</p>";
    
    // Para probar sin la función de limpieza, comenta las líneas anteriores y descomenta las siguientes:
    /*
    echo "<h1>Datos Procesados (sin limpieza)</h1>";
    echo "<p><strong>Nombre:</strong> " . htmlspecialchars($_POST['nombre']) . "</p>";
    echo "<p><strong>Email:</strong> " . htmlspecialchars($_POST['email']) . "</p>";
    */
    
    echo "<a href='index.php'>Volver al formulario</a>";
} else {
    // Si no se enviaron datos por POST, redirigimos al formulario
    header("Location: index.php");
    exit();
}
?>

```

## Ejercicio 6: Función limpiarArray

```php
<?php
// funciones.php (añadir esta función)

/**
 * Función para limpiar un array completo utilizando limpiarDato
 * @param array $request El array a limpiar
 * @return array El array limpio
 */
function limpiarArray($request) {
    $arrayLimpio = [];
    
    foreach ($request as $clave => $valor) {
        $arrayLimpio[$clave] = limpiarDato($valor);
    }
    
    return $arrayLimpio;
}
?>
```

## Ejercicio 7: Función recursiva para limpiar arrays

```php
<?php
// funciones.php (añadir esta función)

/**
 * Función recursiva para limpiar un array (incluyendo arrays anidados)
 * @param array $request El array a limpiar
 * @return array El array limpio
 */
function limpiarArrayRecursivo($request) {
    $arrayLimpio = [];
    
    foreach ($request as $clave => $valor) {
        if (is_array($valor)) {
            // Si el valor es un array, llamamos recursivamente a la función
            $arrayLimpio[$clave] = limpiarArrayRecursivo($valor);
        } else {
            // Si no es un array, aplicamos limpiarDato
            $arrayLimpio[$clave] = limpiarDato($valor);
        }
    }
    
    return $arrayLimpio;
}
?>
```

## Ejercicio 8: Función para convertir a mayúsculas una matriz

```php
<?php
// funciones.php (añadir esta función)

/**
 * Función para convertir a mayúsculas todos los elementos de una matriz N x M
 * @param array $matriz La matriz a procesar
 * @return array La matriz con todos los elementos en mayúsculas
 */
function convertirMatrizAMayusculas($matriz) {
    $matrizMayusculas = [];
    
    foreach ($matriz as $fila => $columnas) {
        if (is_array($columnas)) {
            foreach ($columnas as $columna => $valor) {
                if (is_string($valor)) {
                    $matrizMayusculas[$fila][$columna] = strtoupper($valor);
                } else {
                    $matrizMayusculas[$fila][$columna] = $valor;
                }
            }
        } else if (is_string($columnas)) {
            $matrizMayusculas[$fila] = strtoupper($columnas);
        } else {
            $matrizMayusculas[$fila] = $columnas;
        }
    }
    
    return $matrizMayusculas;
}
?>
```

## Ejercicio 9: Función para generar contraseña aleatoria

```php
<?php
// funciones.php (añadir esta función)

/**
 * Función para generar una contraseña alfanumérica aleatoria
 * @param int $longitud Longitud de la contraseña (mínimo 8)
 * @return string La contraseña generada
 */
function generarContrasena($longitud = 8) {
    // Validamos que la longitud sea al menos 8
    if ($longitud < 8) {
        $longitud = 8;
    }
    
    // Definimos los caracteres a utilizar
    $minusculas = 'abcdefghijklmnopqrstuvwxyz';
    $mayusculas = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $numeros = '0123456789';
    $especiales = '!@#$%^&*()-_=+[]{}|;:,.<>?';
    
    // Mezclamos todos los caracteres
    $todosLosCaracteres = $minusculas . $mayusculas . $numeros . $especiales;
    
    // Nos aseguramos de incluir al menos un carácter de cada tipo
    $contrasena = '';
    $contrasena .= $minusculas[rand(0, strlen($minusculas) - 1)];
    $contrasena .= $mayusculas[rand(0, strlen($mayusculas) - 1)];
    $contrasena .= $numeros[rand(0, strlen($numeros) - 1)];
    $contrasena .= $especiales[rand(0, strlen($especiales) - 1)];
    
    // Completamos el resto de la contraseña con caracteres aleatorios
    for ($i = 4; $i < $longitud; $i++) {
        $contrasena .= $todosLosCaracteres[rand(0, strlen($todosLosCaracteres) - 1)];
    }
    
    // Mezclamos la contraseña para que los caracteres especiales no estén siempre en las mismas posiciones
    $contrasena = str_shuffle($contrasena);
    
    return $contrasena;
}
?>
```

## Ejercicio 10: Función para convertir importe monetario a texto

```php
<?php
// funciones.php (añadir esta función)

/**
 * Función para convertir un importe monetario a su representación en texto
 * @param float $importe El importe a convertir
 * @return string La representación en texto del importe
 */
function dinero2Text($importe) {
    // Separamos la parte entera de la decimal
    $partes = explode('.', number_format($importe, 2, '.', ''));
    $enteros = intval($partes[0]);
    $decimales = isset($partes[1]) ? intval($partes[1]) : 0;
    
    // Convertimos la parte entera a texto
    $textoEntero = convertirNumeroATexto($enteros);
    
    // Convertimos la parte decimal a texto
    $textoDecimal = convertirNumeroATexto($decimales);
    
    // Construimos el texto final
    $resultado = $textoEntero;
    
    if ($enteros == 1) {
        $resultado .= ' peso';
    } else {
        $resultado .= ' pesos';
    }
    
    if ($decimales > 0) {
        $resultado .= ' con ' . $textoDecimal;
        
        if ($decimales == 1) {
            $resultado .= ' centavo';
        } else {
            $resultado .= ' centavos';
        }
    }
    
    return ucfirst($resultado);
}

/**
 * Función auxiliar para convertir un número a texto
 * @param int $numero El número a convertir
 * @return string La representación en texto del número
 */
function convertirNumeroATexto($numero) {
    if ($numero == 0) {
        return 'cero';
    }
    
    $texto = '';
    
    // Manejamos los millones
    if ($numero >= 1000000) {
        $millones = floor($numero / 1000000);
        $resto = $numero % 1000000;
        
        if ($millones == 1) {
            $texto .= ' un millón';
        } else {
            $texto .= ' ' . convertirNumeroATexto($millones) . ' millones';
        }
        
        if ($resto > 0) {
            $texto .= convertirNumeroATexto($resto);
        }
        
        return $texto;
    }
    
    // Manejamos los miles
    if ($numero >= 1000) {
        $miles = floor($numero / 1000);
        $resto = $numero % 1000;
        
        if ($miles == 1) {
            $texto .= ' mil';
        } else {
            $texto .= ' ' . convertirNumeroATexto($miles) . ' mil';
        }
        
        if ($resto > 0) {
            $texto .= convertirNumeroATexto($resto);
        }
        
        return $texto;
    }
    
    // Manejamos las centenas
    if ($numero >= 100) {
        $centenas = floor($numero / 100);
        $resto = $numero % 100;
        
        if ($centenas == 1 && $resto == 0) {
            return ' cien';
        } else if ($centenas == 1) {
            $texto .= ' ciento';
        } else if ($centenas == 2) {
            $texto .= ' doscientos';
        } else if ($centenas == 3) {
            $texto .= ' trescientos';
        } else if ($centenas == 4) {
            $texto .= ' cuatrocientos';
        } else if ($centenas == 5) {
            $texto .= ' quinientos';
        } else if ($centenas == 6) {
            $texto .= ' seiscientos';
        } else if ($centenas == 7) {
            $texto .= ' setecientos';
        } else if ($centenas == 8) {
            $texto .= ' ochocientos';
        } else if ($centenas == 9) {
            $texto .= ' novecientos';
        }
        
        if ($resto > 0) {
            $texto .= convertirNumeroATexto($resto);
        }
        
        return $texto;
    }
    
    // Manejamos las decenas y unidades
    if ($numero >= 30) {
        $decenas = floor($numero / 10) * 10;
        $unidades = $numero % 10;
        
        if ($decenas == 30) {
            $texto .= ' treinta';
        } else if ($decenas == 40) {
            $texto .= ' cuarenta';
        } else if ($decenas == 50) {
            $texto .= ' cincuenta';
        } else if ($decenas == 60) {
            $texto .= ' sesenta';
        } else if ($decenas == 70) {
            $texto .= ' setenta';
        } else if ($decenas == 80) {
            $texto .= ' ochenta';
        } else if ($decenas == 90) {
            $texto .= ' noventa';
        }
        
        if ($unidades > 0) {
            $texto .= ' y ' . convertirNumeroATexto($unidades);
        }
        
        return $texto;
    }
    
    // Manejamos los números especiales entre 10 y 29
    if ($numero >= 10) {
        if ($numero == 10) {
            return ' diez';
        } else if ($numero == 11) {
            return ' once';
        } else if ($numero == 12) {
            return ' doce';
        } else if ($numero == 13) {
            return ' trece';
        } else if ($numero == 14) {
            return ' catorce';
        } else if ($numero == 15) {
            return ' quince';
        } else if ($numero == 16) {
            return ' dieciséis';
        } else if ($numero == 17) {
            return ' diecisiete';
        } else if ($numero == 18) {
            return ' dieciocho';
        } else if ($numero == 19) {
            return ' diecinueve';
        } else if ($numero == 20) {
            return ' veinte';
        } else if ($numero == 21) {
            return ' veintiuno';
        } else if ($numero == 22) {
            return ' veintidós';
        } else if ($numero == 23) {
            return ' veintitrés';
        } else if ($numero == 24) {
            return ' veinticuatro';
        } else if ($numero == 25) {
            return ' veinticinco';
        } else if ($numero == 26) {
            return ' veintiséis';
        } else if ($numero == 27) {
            return ' veintisiete';
        } else if ($numero == 28) {
            return ' veintiocho';
        } else if ($numero == 29) {
            return ' veintinueve';
        }
    }
    
    // Manejamos las unidades
    if ($numero == 1) {
        return ' uno';
    } else if ($numero == 2) {
        return ' dos';
    } else if ($numero == 3) {
        return ' tres';
    } else if ($numero == 4) {
        return ' cuatro';
    } else if ($numero == 5) {
        return ' cinco';
    } else if ($numero == 6) {
        return ' seis';
    } else if ($numero == 7) {
        return ' siete';
    } else if ($numero == 8) {
        return ' ocho';
    } else if ($numero == 9) {
        return ' nueve';
    }
    
    return $texto;
}
?>
```

## Archivo completo funciones.php

```php
<?php
// funciones.php

/**
 * Función para limpiar un dato eliminando etiquetas HTML y espacios en blanco
 * @param string $dato El dato a limpiar
 * @return string El dato limpio
 */
function limpiarDato($dato) {
    // Elimina etiquetas HTML y PHP
    $dato = strip_tags($dato);
    // Elimina espacios en blanco al inicio y al final
    $dato = trim($dato);
    
    return $dato;
}

/**
 * Función para limpiar un array completo utilizando limpiarDato
 * @param array $request El array a limpiar
 * @return array El array limpio
 */
function limpiarArray($request) {
    $arrayLimpio = [];
    
    foreach ($request as $clave => $valor) {
        $arrayLimpio[$clave] = limpiarDato($valor);
    }
    
    return $arrayLimpio;
}

/**
 * Función recursiva para limpiar un array (incluyendo arrays anidados)
 * @param array $request El array a limpiar
 * @return array El array limpio
 */
function limpiarArrayRecursivo($request) {
    $arrayLimpio = [];
    
    foreach ($request as $clave => $valor) {
        if (is_array($valor)) {
            // Si el valor es un array, llamamos recursivamente a la función
            $arrayLimpio[$clave] = limpiarArrayRecursivo($valor);
        } else {
            // Si no es un array, aplicamos limpiarDato
            $arrayLimpio[$clave] = limpiarDato($valor);
        }
    }
    
    return $arrayLimpio;
}

/**
 * Función para convertir a mayúsculas todos los elementos de una matriz N x M
 * @param array $matriz La matriz a procesar
 * @return array La matriz con todos los elementos en mayúsculas
 */
function convertirMatrizAMayusculas($matriz) {
    $matrizMayusculas = [];
    
    foreach ($matriz as $fila => $columnas) {
        if (is_array($columnas)) {
            foreach ($columnas as $columna => $valor) {
                if (is_string($valor)) {
                    $matrizMayusculas[$fila][$columna] = strtoupper($valor);
                } else {
                    $matrizMayusculas[$fila][$columna] = $valor;
                }
            }
        } else if (is_string($columnas)) {
            $matrizMayusculas[$fila] = strtoupper($columnas);
        } else {
            $matrizMayusculas[$fila] = $columnas;
        }
    }
    
    return $matrizMayusculas;
}

/**
 * Función para generar una contraseña alfanumérica aleatoria
 * @param int $longitud Longitud de la contraseña (mínimo 8)
 * @return string La contraseña generada
 */
function generarContrasena($longitud = 8) {
    // Validamos que la longitud sea al menos 8
    if ($longitud < 8) {
        $longitud = 8;
    }
    
    // Definimos los caracteres a utilizar
    $minusculas = 'abcdefghijklmnopqrstuvwxyz';
    $mayusculas = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $numeros = '0123456789';
    $especiales = '!@#$%^&*()-_=+[]{}|;:,.<>?';
    
    // Mezclamos todos los caracteres
    $todosLosCaracteres = $minusculas . $mayusculas . $numeros . $especiales;
    
    // Nos aseguramos de incluir al menos un carácter de cada tipo
    $contrasena = '';
    $contrasena .= $minusculas[rand(0, strlen($minusculas) - 1)];
    $contrasena .= $mayusculas[rand(0, strlen($mayusculas) - 1)];
    $contrasena .= $numeros[rand(0, strlen($numeros) - 1)];
    $contrasena .= $especiales[rand(0, strlen($especiales) - 1)];
    
    // Completamos el resto de la contraseña con caracteres aleatorios
    for ($i = 4; $i < $longitud; $i++) {
        $contrasena .= $todosLosCaracteres[rand(0, strlen($todosLosCaracteres) - 1)];
    }
    
    // Mezclamos la contraseña para que los caracteres especiales no estén siempre en las mismas posiciones
    $contrasena = str_shuffle($contrasena);
    
    return $contrasena;
}

/**
 * Función para convertir un importe monetario a su representación en texto
 * @param float $importe El importe a convertir
 * @return string La representación en texto del importe
 */
function dinero2Text($importe) {
    // Separamos la parte entera de la decimal
    $partes = explode('.', number_format($importe, 2, '.', ''));
    $enteros = intval($partes[0]);
    $decimales = isset($partes[1]) ? intval($partes[1]) : 0;
    
    // Convertimos la parte entera a texto
    $textoEntero = convertirNumeroATexto($enteros);
    
    // Convertimos la parte decimal a texto
    $textoDecimal = convertirNumeroATexto($decimales);
    
    // Construimos el texto final
    $resultado = $textoEntero;
    
    if ($enteros == 1) {
        $resultado .= ' peso';
    } else {
        $resultado .= ' pesos';
    }
    
    if ($decimales > 0) {
        $resultado .= ' con ' . $textoDecimal;
        
        if ($decimales == 1) {
            $resultado .= ' centavo';
        } else {
            $resultado .= ' centavos';
        }
    }
    
    return ucfirst($resultado);
}

/**
 * Función auxiliar para convertir un número a texto
 * @param int $numero El número a convertir
 * @return string La representación en texto del número
 */
function convertirNumeroATexto($numero) {
    if ($numero == 0) {
        return 'cero';
    }
    
    $texto = '';
    
    // Manejamos los millones
    if ($numero >= 1000000) {
        $millones = floor($numero / 1000000);
        $resto = $numero % 1000000;
        
        if ($millones == 1) {
            $texto .= ' un millón';
        } else {
            $texto .= ' ' . convertirNumeroATexto($millones) . ' millones';
        }
        
        if ($resto > 0) {
            $texto .= convertirNumeroATexto($resto);
        }
        
        return $texto;
    }
    
    // Manejamos los miles
    if ($numero >= 1000) {
        $miles = floor($numero / 1000);
        $resto = $numero % 1000;
        
        if ($miles == 1) {
            $texto .= ' mil';
        } else {
            $texto .= ' ' . convertirNumeroATexto($miles) . ' mil';
        }
        
        if ($resto > 0) {
            $texto .= convertirNumeroATexto($resto);
        }
        
        return $texto;
    }
    
    // Manejamos las centenas
    if ($numero >= 100) {
        $centenas = floor($numero / 100);
        $resto = $numero % 100;
        
        if ($centenas == 1 && $resto == 0) {
            return ' cien';
        } else if ($centenas == 1) {
            $texto .= ' ciento';
        } else if ($centenas == 2) {
            $texto .= ' doscientos';
        } else if ($centenas == 3) {
            $texto .= ' trescientos';
        } else if ($centenas == 4) {
            $texto .= ' cuatrocientos';
        } else if ($centenas == 5) {
            $texto .= ' quinientos';
        } else if ($centenas == 6) {
            $texto .= ' seiscientos';
        } else if ($centenas == 7) {
            $texto .= ' setecientos';
        } else if ($centenas == 8) {
            $texto .= ' ochocientos';
        } else if ($centenas == 9) {
            $texto .= ' novecientos';
        }
        
        if ($resto > 0) {
            $texto .= convertirNumeroATexto($resto);
        }
        
        return $texto;
    }
    
    // Manejamos las decenas y unidades
    if ($numero >= 30) {
        $decenas = floor($numero / 10) * 10;
        $unidades = $numero % 10;
        
        if ($decenas == 30) {
            $texto .= ' treinta';
        } else if ($decenas == 40) {
            $texto .= ' cuarenta';
        } else if ($decenas == 50) {
            $texto .= ' cincuenta';
        } else if ($decenas == 60) {
            $texto .= ' sesenta';
        } else if ($decenas == 70) {
            $texto .= ' setenta';
        } else if ($decenas == 80) {
            $texto .= ' ochenta';
        } else if ($decenas == 90) {
            $texto .= ' noventa';
        }
        
        if ($unidades > 0) {
            $texto .= ' y ' . convertirNumeroATexto($unidades);
        }
        
        return $texto;
    }
    
    // Manejamos los números especiales entre 10 y 29
    if ($numero >= 10) {
        if ($numero == 10) {
            return ' diez';
        } else if ($numero == 11) {
            return ' once';
        } else if ($numero == 12) {
            return ' doce';
        } else if ($numero == 13) {
            return ' trece';
        } else if ($numero == 14) {
            return ' catorce';
        } else if ($numero == 15) {
            return ' quince';
        } else if ($numero == 16) {
            return ' dieciséis';
        } else if ($numero == 17) {
            return ' diecisiete';
        } else if ($numero == 18) {
            return ' dieciocho';
        } else if ($numero == 19) {
            return ' diecinueve';
        } else if ($numero == 20) {
            return ' veinte';
        } else if ($numero == 21) {
            return ' veintiuno';
        } else if ($numero == 22) {
            return ' veintidós';
        } else if ($numero == 23) {
            return ' veintitrés';
        } else if ($numero == 24) {
            return ' veinticuatro';
        } else if ($numero == 25) {
            return ' veinticinco';
        } else if ($numero == 26) {
            return ' veintiséis';
        } else if ($numero == 27) {
            return ' veintisiete';
        } else if ($numero == 28) {
            return ' veintiocho';
        } else if ($numero == 29) {
            return ' veintinueve';
        }
    }
    
    // Manejamos las unidades
    if ($numero == 1) {
        return ' uno';
    } else if ($numero == 2) {
        return ' dos';
    } else if ($numero == 3) {
        return ' tres';
    } else if ($numero == 4) {
        return ' cuatro';
    } else if ($numero == 5) {
        return ' cinco';
    } else if ($numero == 6) {
        return ' seis';
    } else if ($numero == 7) {
        return ' siete';
    } else if ($numero == 8) {
        return ' ocho';
    } else if ($numero == 9) {
        return ' nueve';
    }
    
    return $texto;
}
?>
```
## Ejemplo de uso para probar las funciones

```php
<?php
// prueba_funciones.php

require_once 'funciones.php';

// Prueba de limpiarDato
 $datoSucio = "  <h1>   Hola Mundo   </h1>  ";
 $datoLimpio = limpiarDato($datoSucio);
echo "Dato original: '" . htmlspecialchars($datoSucio) . "'<br>";
echo "Dato limpio: '" . htmlspecialchars($datoLimpio) . "'<br><br>";

// Prueba de limpiarArray
 $arraySucio = [
    'nombre' => "  <p>  Juan Pérez  </p>  ",
    'email' => "  <b>  juan@example.com  </b>  ",
    'comentario' => "  <script>alert('hola')</script>  Este es un comentario  "
];
 $arrayLimpio = limpiarArray($arraySucio);
echo "Array original:<br>";
print_r($arraySucio);
echo "<br>Array limpio:<br>";
print_r($arrayLimpio);
echo "<br><br>";

// Prueba de convertirMatrizAMayusculas
 $matriz = [
    ['a', 'b', 'c'],
    ['d', 'e', 'f'],
    ['g', 'h', 'i']
];
 $matrizMayusculas = convertirMatrizAMayusculas($matriz);
echo "Matriz original:<br>";
print_r($matriz);
echo "<br>Matriz en mayúsculas:<br>";
print_r($matrizMayusculas);
echo "<br><br>";

// Prueba de generarContrasena
 $longitud = 12;
 $contrasena = generarContrasena($longitud);
echo "Contraseña generada de {$longitud} caracteres: {$contrasena}<br><br>";

// Prueba de dinero2Text
 $importe = 1233.75;
 $texto = dinero2Text($importe);
echo "Importe: {$importe}<br>";
echo "Texto: {$texto}<br><br>";
?>
```
