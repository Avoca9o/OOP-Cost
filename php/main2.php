<?php
class Base {}

$start = microtime(true);

for ($i = 0; $i < 100000000; $i++) {
    $obj = new Base();
}

$finish = microtime(true);

$elapsed = (int)(($finish - $start) * 1000) . "\n";

file_put_contents("output.txt", $elapsed, FILE_APPEND);
?>
