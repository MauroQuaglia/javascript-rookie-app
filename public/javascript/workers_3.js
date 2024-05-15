'use strict'

let currentTime = new Date().getTime();
let updatedTIme = new Date(currentTime + 15000);

console.log('Start working...');
while (Date.now() < updatedTIme) {
    ;
}
console.log('End working...');

self.postMessage('end');