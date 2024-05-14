'use strict'

// Quando sono nel worker, questo rappresenta il global object del worker.
console.log('Inizio...')

let currentTime = new Date().getTime();
let updatedTIme = new Date(currentTime + 5000);

self.addEventListener("message", (event) => {
    // Non può rispondere subito perché nel mentre è impenato a fare altro, quindi risponderà quandoha finito.
    console.log(`Messaggio ricevuto dal Thread principale: ${event.data}`);
});

while (Date.now() < updatedTIme) {
    ;
}

console.log('...fine')
