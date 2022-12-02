#!/usr/bin/env node

let max  = 0;
let deer = 0;
require('fs').readFileSync('input', 'utf-8').split(/\r?\n/).forEach((l) => {
    if (! l.length) {
        if (max < deer) max = deer;
        deer = 0;
    }
    else deer += parseInt(l, 10);
});
console.log(max);