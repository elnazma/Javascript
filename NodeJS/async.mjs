function samplePromise() {
    return Promise.resolve("Elva");
}

const data = await samplePromise();
console.info(data);