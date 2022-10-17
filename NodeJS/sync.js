const getUserSync = (id) => {
    const nama = id === 1 ? 'Ibu Elva' : 'Bapak Elva';
    return {id, nama};
};

const userSatu = getUserSync(1);
console.info(userSatu);

const userDua = getUserSync(2);
console.info(userDua);

const halo = 'Hallo semuanya!';
console.info(halo);