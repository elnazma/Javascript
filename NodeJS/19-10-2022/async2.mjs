function samplePromise() {
    return Promise.resolve("Eko");
}

const data = await samplePromise(); //error
console.info(data);