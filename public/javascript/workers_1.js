'use strict'

// Quando sono nel worker, questo rappresenta il global object del worker.
console.log('Inizio...')

let currentTime = new Date().getTime();
let updatedTIme = new Date(currentTime + 5000);

self.postMessage('Ciao Thread principale, io sto per iniziare!');
while (Date.now() < updatedTIme) {
    ;
}
self.postMessage('Ciao Thread principale, io ho finito!');

console.log('...fine')
