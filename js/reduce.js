const notas = [8.5, 6.5, 7.8, 10];
const somas = notas.reduce((nota, soma) => soma + nota, 0);
console.log('A soma das notas é: ', somas);