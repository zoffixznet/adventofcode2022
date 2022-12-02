<?php

$max  = 0;
$deer = 0;
foreach(file('input') as $line) {
    $line = trim($line);
    if (strlen($line) == 0) {
        if ($max < $deer) $max = $deer;
        $deer = 0;
    }
    else $deer += intval($line);
}
print("$max\n");