class Base {}

const fs = require('fs');
const path = require('path');

const start = Date.now();

for (let i = 0; i < 100000000; ++i) {
    obj = new Base();
}

const finish = Date.now();
    
const elapsed = finish - start;

const fout = path.join(__dirname, 'output.txt');
fs.appendFile(fout, elapsed + "\n", 'utf8', (err) => {
    if (err) {
        console.error('Can\'t write to a file:', err);
    }
});
