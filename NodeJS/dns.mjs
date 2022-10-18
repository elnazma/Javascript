// import dns from "dns";

// function callback(error, ip) {
//     console.info(ip);
// }

// dns.lookup("www.weverse.io", callback)


import dns from "dns/promises";
const address = await dns.lookup("www.weverse.io");

console.info(address.address);
console.info(address.family);