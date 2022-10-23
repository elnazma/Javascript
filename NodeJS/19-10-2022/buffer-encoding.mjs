const buffer = Buffer.from("Ini Saya Elva", "utf8");

console.info(buffer.toString());
console.info(buffer.toString("hex"));
console.info(buffer.toString("base64"));

const bufferBase64 = Buffer.from("avlEayaSinI==", "base64");
console.info(bufferBase64.toString("utf8"));