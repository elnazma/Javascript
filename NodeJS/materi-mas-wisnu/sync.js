const getUserSync = (id) => {
    const nama = id === 1 ? 'Ibu Budi' : 'Bapak Budi';
    return { id, nama };
};

const userSatu = getUserSync(1);
console.info(userSatu);

const userDua = getUserSync(2);
console.info(userDua);

const halo = 'Hello Semuanya!';
console.info(halo);