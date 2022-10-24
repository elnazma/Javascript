import { sayHello, sum} from "belajar-nodejs-npm-library";
import { max, min} from "belajar-nodejs-npm-library/number";

console.info(sayHello(name, "Eko"));

const numbers = [10, 10, 10, 10, 10];
console.log(sum(numbers));

console.info(min(10, 20));
console.info(max(10, 20));