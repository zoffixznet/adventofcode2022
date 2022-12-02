#!/usr/bin/env node

let deers = [];
let deer  = 0;
require('fs').readFileSync('input', 'utf-8').split(/\r?\n/).forEach((l) => {
    if (! l.length) {
        deers.push(deer);
        deer = 0;
    }
    else deer += parseInt(l, 10);
});
console.log(deers.sort((a, b) => b-a).slice(0, 3).reduce((a, b) => a+b));