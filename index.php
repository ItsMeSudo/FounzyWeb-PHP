<!DOCTYPE html>
<html>

<head>
    <title>Alap oldal</title>
    <meta charset="UTF-8">
</head>

<body style="background-color: grey;">
    <center>
        <h1>Üdvözöl a FounzyWeb</h1>
    </center>
    <center>
        <h3>Ha ezt az oldalt látod akkor az alap konténer telepítése sikeres volt(Prémium PHP), mostmár csak annyi a dolgod hogy a saját weboldaladat a githubodról lemásolod. :D</h3>
    </center>
    <center>
        <h3>
            <?php 
            echo "Jelenlegi PHP verzió: " . phpversion(). "<br>". "Jogosultságok a /data mappába: ". substr(sprintf('%o', fileperms('/data')), -4). "<br>". "Jelenleg használatban lévő kiegészítők: ";

            function prettyPrint($a) {
                echo '<pre>'.print_r($a,1).'</pre>';
            }
            $s = get_loaded_extensions();
            prettyPrint($s);
            ?>
        </h3>
    </center>
</body>

</html>