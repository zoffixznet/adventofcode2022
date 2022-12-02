<?php

$deers = [];
$deer = 0;
foreach(file('input') as $line) {
    $line = trim($line);
    if (strlen($line) == 0) {
        $deers[] = $deer;
        $deer = 0;
    }
    else $deer += intval($line);
}
arsort($deers);
print(array_reduce(array_slice($deers, 0, 3), function ($a, $b) { return $a + $b; }, 0) . "\n");