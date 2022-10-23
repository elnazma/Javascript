import util from "util";

const firstName = "Elva";
const lastName = "Nazlita";

console.info(`Hello ${firstName} ${lastName}`);
console.info(util.format("Hello %s %s", firstName, lastName));

const person = {
    firstName: "Elva",
    lastName: "Nazlita"
};

console.info(`Person : ${JSON.stringify(person)}`);
console.info(util.format("Person : %j", person));