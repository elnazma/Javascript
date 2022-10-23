import fs from "fs";

const writer = fs.createWriteStream("target.log");

writer.write("Ini\n");
writer.write("Saya\n");
writer.write("Elva\n");
writer.end();

const reader = fs.createReadStream("target.log");
reader.addListener("data", (data) => {
    console.info(data.toString());
});