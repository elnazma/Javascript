import { URL } from "url";

const pzn = new URL ("https://id.pinterest.com/pin/7036943158912402/");

pzn.host = "id.pinterest.com";
pzn.searchParams.append("status", "premium");

console.info(pzn.toString());
console.info(pzn.href);
console.info(pzn.protocol);
console.info(pzn.host);
console.info(pzn.pathname);
console.info(pzn.searchParams);