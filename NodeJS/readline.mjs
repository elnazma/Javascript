import readline from "readline";
import process from "process";

const input = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
})

// const completeName = "Elva Nazlita Maulydia";

input.question("Siapa Nama Lengkapmu?", (name) => {
    console.info(`Nama Saya ${name}`);
    // console.info(`Nama Saya ${completeName}`);
});